
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
//                      DISCORD-SAMP VERIFICATION SYSTEM - STEWART
//
//                      This System is made for security purposes
//                      that can prevent hackers from hacking or
//                      creating multiple accounts.
//
//                      Please follow each and every guide here.
//
//
//                      This system has been made only by STEWART.
//
//                     Please take credits to him as he put all of his
//
//                              knowledge to this system.
//
//                      All system, functions, and publics was taken
//
//                       from the Pawn Library and Discord Connector.
//
//
//                      Developers:
//                          Stewart - Stewart#8221 - Alcazar City Roleplay
//                       With the help of:
//                          Tiyo - TiyoNotFound#7124 - Legacy Gaming
//                          Maxwell - Maxwell#4440 - Asian Free Roleplay
//                          Tian - Tiaaan.#5777 - Lost Island Roleplay
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Includes:
https://github.com/Southclaws/zcmd - ZCMD
https://github.com/pBlueG/SA-MP-MySQL/releases/tag/R39-6 - MySQL R39-6 // If you want to update it, update some functions too
https://github.com/maddinat0r/samp-discord-connector/releases/tag/v0.3.5 - Discord Connectord v0.3.5
https://github.com/AkshayMohan/pawn-discord-cmd - Discord CMD


// Discord Enum
enum dcInfo
{
    dcName[DCC_USERNAME_SIZE],
    dcTag[DCC_ID_SIZE],
    dcId[20 + 1]
};
new DiscordInfo[dcInfo];
// Player Enum
enum pEnum
{
    //Verified via Discord - Stewart
	pVerified,
	pCode,
	pDiscordName[32+1],
	pDiscordTag[20+1],
	pDiscordID[20+1],
}

// Dialog Enum
enum
{
    DIALOG_VERIFICATION,
    DIALOG_VERIFICATION1,
}


// THREAD_PROCESS_LOGIN
                // Reloading player's discord stuffs and verified thing when logging in
                PlayerInfo[extraid][pDiscordTag] = cache_get_field_content_int(0, "discordtag");
				cache_get_field_content(0, "discordname", PlayerInfo[extraid][pDiscordName], connectionID, 16);
				cache_get_field_content(0, "discordid", PlayerInfo[extraid][pDiscordID], connectionID, 21);

                PlayerInfo[extraid][pVerified] = cache_get_field_content_int(0, "verify");

				PlayerInfo[extraid][pCode] = cache_get_field_content_int(0, "code");
//

// ONPLAYERCONNECT
    PlayerInfo[playerid][pCode] = 0;
    PlayerInfo[playerid][pVerified] = 0;
    strcpy(pData[playerid][pDiscordName], "None", 128);
    PlayerInfo[playerid][pDiscordTag] = 0;
    PlayerInfo[playerid][pDiscordID] = 0;
//

// OnDialogRespose
    if(dialogid == DIALOG_VERIFICATION)
	{
		new string[128];
		if(response)
		{
			switch(listitem)
			{
				case 0: return 1; // Name
				case 2:
				{
					if(PlayerInfo[playerid][pVerified])
					{
						SetPVarInt(playerid, "Unverification", 1);
						format(string, sizeof(string), "Welcome to "SERVER_NAME" %s,\nDo you want to be unverified?\nYou will not be able to view some channels such as:\n> Global Chatroom\n> Report System\n> Newbie Chatroom\n.", GetRPName(playerid), PlayerInfo[playerid][pCode]);
						return ShowPlayerDialog(playerid, DIALOG_VERIFICATION1, DIALOG_STYLE_MSGBOX, "Account Verification", string, "Okay", "");
					}
					else
					{
						if(PlayerInfo[playerid][pCode] == 0)
						{
							return SendClientMessage(playerid, COLOR_SYNTAX, "Your current code has been reseted. Please use /refreshcode for new code.");
						}
						SetPVarInt(playerid, "Verification", 1);
						format(string, sizeof(string), "Welcome to "SERVER_NAME" %s,\nYou can verify your account using this code %i.", GetRPName(playerid), PlayerInfo[playerid][pCode]);
						return ShowPlayerDialog(playerid, DIALOG_VERIFICATION1, DIALOG_STYLE_MSGBOX, "Account Verification", string, "Okay", "");
					}
				}
			}
		}
	}
	if(dialogid == DIALOG_VERIFICATION1)
	{
		if(response)
		{
			if(GetPVarInt(playerid, "Verification") == 1)
			{
				DeletePVar(playerid, "Verification");
				new string[248];
				format(string, sizeof(string), "Name:\t%s\n\
				Discord: %s#%i\n\
				Verification:\t%st", GetRPName(playerid), PlayerInfo[playerid][pDiscordName], PlayerInfo[playerid][pDiscordTag], (PlayerInfo[playerid][pVerified] ? (""GREEN"Verified"WHITE"") : (""RED"Not Verified")));
				ShowPlayerDialog(playerid, DIALOG_VERIFICATION, DIALOG_STYLE_LIST, "Account Verification", string, "Select", "Cancel");
			}
			else if(GetPVarInt(playerid, "Unverification") == 1)
			{
				new string[64], str[128];

				// Unlinking Discord Account
				new DCC_Guild:guild = DCC_FindGuildById("905667779103977522"); // Now to get the guild/server ID // 
				new DCC_Channel:channel = DCC_FindChannelById("936583015390412830");
                new DCC_Role:role = DCC_FindRoleById("934433462843220010"); // Verified Role
                new DCC_Role:role1 = DCC_FindRoleById("905667779103977530"); // Unverified Role
				new DCC_User:user = DCC_FindUserById(PlayerInfo[playerid][pDiscordID]);
				DCC_RemoveGuildMemberRole(guild, user, role);
				DCC_AddGuildMemberRole(guild, user, role1);
				string = "";
				DCC_SetGuildMemberNickname(guild, user, string);
				format(str, sizeof(str), "**AdmBot: Player %s has unlinked their account to <@%s>.**", GetPlayerNameEx(playerid), PlayerInfo[playerid][pDiscordID]);
				DCC_SendChannelMessage(channel, str);
				mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET verify = 0, discordname = 'None', discordtag = '0000', discordid = '0' WHERE uid = %i", PlayerInfo[playerid][pID]);
            	mysql_tquery(connectionID, queryBuffer);

				// In-Game Unverification
				DeletePVar(playerid, "Unverification");
				PlayerInfo[playerid][pVerified] = 0;
				strcpy(PlayerInfo[playerid][pDiscordName], "None", 128);
				PlayerInfo[playerid][pDiscordTag] = 0;
				PlayerInfo[playerid][pDiscordID] = 0;
				PlayerInfo[playerid][pCode] = 0;
				return SCM(playerid, COLOR_YELLOW, "You are not Un-Verified. You can verify Yourself again using '/settings'");
			}
		}
	}
//

// IN-GAME COMMANDS
CMD:settings(playerid, params[])
{
	new string[248];
	format(string, sizeof(string), "Name:\t%s\n\
	Discord: %s#%i \n\
	Verification:\t%s", GetRPName(playerid), PlayerInfo[playerid][pDiscordName], PlayerInfo[playerid][pDiscordTag], (PlayerInfo[playerid][pVerified] ? (""GREEN"Verified"WHITE"") : (""RED"Not Verified")));
	ShowPlayerDialog(playerid, DIALOG_VERIFICATION, DIALOG_STYLE_LIST, "Account Verification", string, "Select", "Cancel");
	return 1;
}

CMD:refreshcode(playerid, params[])
{
    if(PlayerInfo[playerid][pVerified] == 1)
    {
        return SendClientMessage(playerid, COLOR_SYNTAX, "You are currently verified.");
    }
    new code = Random(100000, 999999);
    PlayerInfo[playerid][pCode] = code;
    mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET code = %i WHERE uid = %i", code, PlayerInfo[playerid][pID]);
	mysql_tquery(connectionID, queryBuffer);
    SendClientMessage(playerid, COLOR_AQUA, "Code has been re-established. You may see it at '/settings'!!!");
    return 1;
}

// Discord Command //

DCMD:link(user, channel, params[])
{
    // VARIABLES //
    // NOTE: PLEASE CHANGE IT TO EACH ID NEEDED. I'M NOT PROVIDING ANY TUTORIAL ABOUT IT //

    new DCC_Guild:guild = DCC_FindGuildById("905667779103977522"); // Now to get the guild/server ID //
    new DCC_Role:role = DCC_FindRoleById("934433462843220010"); // Verified Role
    new DCC_Role:role1 = DCC_FindRoleById("905667779103977530"); // Unverified Role
    new DCC_Channel:channell = DCC_FindChannelById("936583015390412830"); // 
    new bool:hasRole;
    new name[32+1], id[20+1], user_id[20+1];
    new code;
    new footer[128], str[500], string[128];

    // Checking if the user has the Verified role. if is, we will not allow the user to verify again.
    DCC_HasGuildMemberRole(guild, user, role, hasRole);

    // CODE //
    if(channel != DCC_FindChannelById("905667779506634770")) // Verification Channel
    {
        format(str, sizeof(str), "You can use this command at the verification channel.");
        new DCC_Embed:embed = DCC_CreateEmbed("Wrong Channel!", str);
        DCC_SetEmbedColor(embed, 0xFF0000);
        DCC_SetEmbedFooter(embed, "All Rights' Reserved. Alcazar City Roleplay 2022");
        return DCC_SendChannelEmbedMessage(channel, embed);
    }
    if(sscanf(params, "i", code))
    {
        return DCC_SendChannelMessage(channel, "**Usage: !link [code]**");
    }
    if(hasRole)
    {
        format(str, sizeof(str), "This system prevents users from verifying/creating multiple accounts to the server.");
        new DCC_Embed:embed = DCC_CreateEmbed("You are currently verified!", str);
        DCC_SetEmbedColor(embed, 0xFF0000);
        DCC_SetEmbedFooter(embed, "All Rights' Reserved. Alcazar City Roleplay 2022");
        return DCC_SendChannelEmbedMessage(channel, embed);
    }
    for(new i = 0; i < MAX_PLAYERS; i ++)
    {
        cache_get_field_content_int(0, "code", code);
        if(IsPlayerConnected(i))
        {
            if(PlayerInfo[i][pCode] == code) // If Player is Online //
            {
                PlayerInfo[i][pVerified] = 1;
                PlayerInfo[i][pCode] = 0;
                DCC_GetUserId(user, user_id, sizeof(user_id)); // Getting the User's Internal ID
                DCC_GetUserName(user, name, sizeof(name)); // Getting the User Name
                DCC_GetUserDiscriminator(user, id, sizeof(id)); // Getting the user Tag
                PlayerInfo[i][pDiscordName] = name;
                PlayerInfo[i][pDiscordTag] = id;
                PlayerInfo[i][pDiscordID] = user_id;
                mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET discordname = '%s', discordtag = '%s', discordid = '%e' WHERE username = '%e'", PlayerInfo[i][pDiscordName], PlayerInfo[i][pDiscordTag], PlayerInfo[i][pDiscordID], PlayerInfo[i][pUsername]);
                mysql_tquery(connectionID, queryBuffer);

                mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET verify = 1 WHERE username = '%e'", PlayerInfo[i][pUsername]);
                mysql_tquery(connectionID, queryBuffer);

                SendClientMessage(i, COLOR_AQUA, "You are now verified. You may now be able to access general commands like global chat, newbie chat, jobs, etc...");
                SendClientMessage(i, COLOR_YELLOW, "Happy Gaming!!!");
                DCC_AddGuildMemberRole(guild, user, role);
                DCC_RemoveGuildMemberRole(guild, user, role1);
                DCC_SetGuildMemberNickname(guild, user, PlayerInfo[i][pUsername]);
                format(string, sizeof(string), "**AdmBot: Player %s has linked their account to <@%s>.**", PlayerInfo[i][pUsername], PlayerInfo[i][pDiscordID]);
				DCC_SendChannelMessage(channell, string);
                format(str, sizeof(str), "Your account **%s** is now successfully linked to <@%s>!!! You will now be able to access general features such as Global Chat, Joining Events, Jobs, and More!!!\nHappy Gaming!!!", PlayerInfo[i][pUsername], PlayerInfo[i][pDiscordID]);
                new DCC_Embed:embed = DCC_CreateEmbed();
                DCC_SetEmbedTitle(embed, "Successfully Verified!!!");
                DCC_SetEmbedDescription(embed, str);
                DCC_SetEmbedColor(embed, 0x00FF00);
                format(footer, sizeof(footer), "All Rights' Reserved. Alcazar Gaming 2022");
                DCC_SetEmbedFooter(embed, footer);
                DCC_SendChannelEmbedMessage(channel, embed);
            }
            else
            {
                format(str, sizeof(str), "The code you've been submitting is either invalid or used to an account that is now verified.");
                new DCC_Embed:embed = DCC_CreateEmbed("Invalid Code!", str);
                DCC_SetEmbedColor(embed, 0xFF0000);
                DCC_SendChannelEmbedMessage(channel, embed);
            }
        }
    }
    return 1;
}

// You can block any system/feature that is on your script by putting this.
// For Job:
if(PlayerInfo[playerid][pVerified] == 0)
{
    return SendClientMessage(playerid, COLOR_AQUA, "You cannot join any jobs while not verified. Please Verify youself at /settings before joining any job.");
}
// For commands:
if(PlayerInfo[playerid][pVerified] == 0)
{
    return SendClientMessage(playerid, COLOR_AQUA, "You cannot use this command while not verified. Please Verify youself at /settings before joining any job.");
}
//For VEhicle Entering:
if(PlayerInfo[playerid][pVerified] == 0)
{
    return SendClientMessage(playerid, COLOR_AQUA, "You cannot enter any vehicle while not verified. Please Verify youself at /settings before joining any job.");
}




//---------------------------------------------------------[MYSQL SETUP]---------------------------------------------------------//

// pCode:
name:code
type:int(10)
colation:
attributes:
null:Yes
default:As Defined - 0
comments:
extra:

// pVerified:
name:verify OR verified // 2 options for you
type:tinyint(1)
colation:
attributes:
null:Yes
default:As Defined - 0
comments:
extra:

// pDiscordTag:
name:discordtag
type:int(10)
colation:
attributes:
null:Yes
default:As Defined - None
comments:
extra:

// pDiscordName:
name:discordname
type:varchar(128)
colation:latin1_swedish_ci
attributes:
null:Yes
default:As Defined - None
comments:
extra:

// pDiscordID:
name:discordid
type:varchar(64)
colation:latin1_swedish_ci
attributes:
null:Yes
default:As Defined - None
comments:
extra:
//-------------------------------------------------------------------------------------------------------------------------------//



//---------------------------------------------------------[HOW TO GET ID?]---------------------------------------------------------//

// For Channels, right on the channel, then tap "Copy ID":

https://cdn.discordapp.com/attachments/920986044432805888/936609900975509534/channel.png

// For Roles, right on the role, then tap "Copy ID":

https://cdn.discordapp.com/attachments/920986044432805888/936609918759362560/role.png

// Fact: Guild is equivalent to Discord Server!
// For Guilds, right on the guild, then tap "Copy ID":

https://cdn.discordapp.com/attachments/920986044432805888/936609931824623666/guild.png