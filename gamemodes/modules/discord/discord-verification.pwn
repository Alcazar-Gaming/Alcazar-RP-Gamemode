/*
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/
/                                        SSSSSSSSSSSSSSSSSSSSSS
/									     SSSSSSSSSSSSSSSSSSSSSS
/							             SSSSSSSSSSSSSSSSSSSSSS
/                                        SSSSSS
/                                        SSSSSS
/                                        SSSSSS
/							             SSSSSSSSSSSSSSSSSSSSSS
/						                 SSSSSSSSSSSSSSSSSSSSSS
/							             SSSSSSSSSSSSSSSSSSSSSS
/                                                        SSSSSS
/							            	             SSSSSS
/							                             SSSSSS
/			   			                 SSSSSSSSSSSSSSSSSSSSSS
/							             SSSSSSSSSSSSSSSSSSSSSS
/							             SSSSSSSSSSSSSSSSSSSSSS
/
/											Alcazar City
/                      	   		____ ______    ____ ___  _    ____ _   _
/				                 |__/ |  | |    |___ |__] |    |__|  \_/
/				                 |  \ |__| |___ |___ |    |___ |  |   |
/
/
/                                 Pawn File: Discord-SAMP Verification
/                                 Module Folder: Discord
/
/                               Module Created by:
/	                        		Stewart - Stewart#8221 - Alcazar City Roleplay
/                                With the help of:
/                                   Tiyo - TiyoNotFound#7124 - Legacy Gaming
/                                   Genji - Genjii#4764 - Legacy Gaming
/                                   Adrian(I think) - Adriann#6885
/                                   Maxwell - Maxwell#4440 - Lunar City Roleplay
/                                   Tian - Tiaaan.#5777 - Lost Island Roleplay
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
*/

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
//                      DISCORD-SAMP VERIFICATION SYSTEM - STEWART
//
//                      This System is made for security purposes
//                      that can prevent hackers from creating 
//                      multiple accounts.
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
//                      This system only works if your server has a player(s).
//                      Once the server doesn't have player(s) in-game, the
//                      system will ignore the !link command.
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/* Includes:
https://github.com/Southclaws/zcmd - ZCMD
https://github.com/pBlueG/SA-MP-MySQL/releases/tag/R39-6 - MySQL R39-6 // If you want to update it, update some functions too
https://github.com/maddinat0r/samp-discord-connector/releases/tag/v0.3.5 - Discord Connectord v0.3.5
https://github.com/AkshayMohan/pawn-discord-cmd - Discord CMD
*/

enum dcInfo
{
    dcName[DCC_USERNAME_SIZE],
    dcTag[DCC_ID_SIZE],
    dcId[20 + 1],
    // GMX name need to store vars
    dcGMX,
    dcGMXName[32 + 1],
    //  Signcheck vars
    dcCode
};
new DiscordInfo[dcInfo];

CMD:refreshcode(playerid, params[])
{
    if(pData[playerid][pVerified] == 1)
    {
        return SendClientMessage(playerid, COLOR_SYNTAX, "You are currently verified.");
    }
    new code = Random(100000, 999999);
    pData[playerid][pCode] = code;
    mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET code = %i WHERE uid = %i", code, pData[playerid][pID]);
	mysql_tquery(connectionID, queryBuffer);
    SendClientMessage(playerid, COLOR_AQUA, "Code has been re-established. You may see it at '/settings'!!!");
    return 1;
}

// Discord Command //

DCMD:link(user, channel, params[])
{
    // VARIABLES //
    new DCC_Guild:guild = DCC_FindGuildById("905667779103977522"); // Now to get the guild ID //
    new DCC_Role:role = DCC_FindRoleById("934433462843220010"); // Verified Role
    new DCC_Role:role1 = DCC_FindRoleById("905667779103977530"); // Unverified Role
    new DCC_Channel:channell = DCC_FindChannelById("936583015390412830");// Verification Logs
    new bool:hasRole;
    new name[32+1], id[20+1], user_id[20+1];
    new code, str[500];
    new footer[128], string[128];

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
        //return DCC_SendChannelMessage(channel, "**Usage: !link [code]**");
        format(str, sizeof(str), "**Usage: !link [code]**");
        new DCC_Embed:embed = DCC_CreateEmbed("", str);
        DCC_SetEmbedColor(embed, 0xFF0000);
        DCC_SetEmbedFooter(embed, "All Rights' Reserved. Alcazar City Roleplay 2022");
        return DCC_SendChannelEmbedMessage(channel, embed);
    }
    if(hasRole)
    {
        format(str, sizeof(str), "This system prevents users from verifying/creating multiple accounts to the server.");
        new DCC_Embed:embed = DCC_CreateEmbed("You are currently verified!", str);
        DCC_SetEmbedColor(embed, 0xFF0000);
        DCC_SetEmbedFooter(embed, "All Rights' Reserved. Alcazar City Roleplay 2022");
        return DCC_SendChannelEmbedMessage(channel, embed);
    }
    if(code == 0)
    {
        format(str, sizeof(str), "The code you've been submitting is either invalid or used to an account that is now verified.");
        new DCC_Embed:embed = DCC_CreateEmbed("Invalid Code!", str);
        DCC_SetEmbedColor(embed, 0xFF0000);
        DCC_SendChannelEmbedMessage(channel, embed);
    }
    for(new i = 0; i < MAX_PLAYERS; i ++)
    {
        cache_get_field_content_int(0, "code", code);
        if(IsPlayerConnected(i))
        {
            if(pData[i][pCode] == code) // If Player is Online //
            {
                pData[i][pVerified] = 1;
                pData[i][pCode] = 0;
                DCC_GetUserId(user, user_id, sizeof(user_id));
                DCC_GetUserName(user, name, sizeof(name));
                DCC_GetUserDiscriminator(user, id, sizeof(id));
                pData[i][pDiscordName] = name;
                pData[i][pDiscordTag] = id;
                pData[i][pDiscordID] = user_id;
                mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET discordname = '%s', discordtag = '%s', discordid = '%e' WHERE username = '%e'", pData[i][pDiscordName], pData[i][pDiscordTag], pData[i][pDiscordID], pData[i][pUsername]);
                mysql_tquery(connectionID, queryBuffer);

                mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET verify = 1 WHERE username = '%e'", pData[i][pUsername]);
                mysql_tquery(connectionID, queryBuffer);

                new string2[128];
                format(string2, sizeof(string2), "Your account has been linked to %s#%i. You may now be able to access general commands like global chat, newbie chat, jobs, etc...", name, id);
                SendClientMessage(i, COLOR_AQUA, string2);
                SendClientMessage(i, COLOR_AQUA, "Happy Gaming!!!");
                DCC_AddGuildMemberRole(guild, user, role);
                DCC_RemoveGuildMemberRole(guild, user, role1);
                DCC_SetGuildMemberNickname(guild, user, GetRPName(i));
                format(string, sizeof(string), "AdmBot: Player **%s** has linked their account to <@%s>.", pData[i][pUsername], pData[i][pDiscordID]);
				DCC_SendChannelMessage(channell, string);
                format(str, sizeof(str), "Your account **%s** is now successfully linked to your discord account!!! Discord: <@%s>. You will now be able to access general features such as Global Chat, Joining Events, Jobs, and More!!!\nHappy Gaming!!!", pData[i][pUsername], pData[i][pDiscordID]);
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

DCMD:offlink(user, channel, params[])
{
    // VARIABLES //
    new DCC_Guild:guild = DCC_FindGuildById("905667779103977522"); // Now to get the guild ID //
    new DCC_Role:role = DCC_FindRoleById("934433462843220010"); // Verified Role
    new bool:hasRole;
    new name[32+1], id[20+1], user_id[20+1];
    new code, str[500];

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
        //return DCC_SendChannelMessage(channel, "**Usage: !link [code]**");
        format(str, sizeof(str), "**Usage: !link [code]**");
        new DCC_Embed:embed = DCC_CreateEmbed("", str);
        DCC_SetEmbedColor(embed, 0xFF0000);
        DCC_SetEmbedFooter(embed, "All Rights' Reserved. Alcazar City Roleplay 2022");
        return DCC_SendChannelEmbedMessage(channel, embed);
    }
    if(hasRole)
    {
        format(str, sizeof(str), "Your Discord Account is currently linked to another account\nThis system prevents users from verifying/creating multiple accounts to the server.");
        new DCC_Embed:embed = DCC_CreateEmbed("You're already linked to Someone!", str);
        DCC_SetEmbedColor(embed, 0xFF0000);
        DCC_SetEmbedFooter(embed, "All Rights' Reserved. Alcazar City Roleplay 2022");
        return DCC_SendChannelEmbedMessage(channel, embed);
    }
    if(code == 0)
    {
        format(str, sizeof(str), "The code you've been submitting is either invalid or used to an account that is now verified.");
        new DCC_Embed:embed = DCC_CreateEmbed("Invalid Code!", str);
        DCC_SetEmbedColor(embed, 0xFF0000);
        DCC_SendChannelEmbedMessage(channel, embed);
    }

    DCC_GetUserId(user, user_id, sizeof(user_id)); // Getting the User's Internal ID
    DCC_GetUserName(user, name, sizeof(name)); // Getting the User Name
    DCC_GetUserDiscriminator(user, id, sizeof(id)); // Getting the user Tag
    DiscordInfo[dcName] = name;
    DiscordInfo[dcTag] = id;
    DiscordInfo[dcId] = user_id;

    mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "SELECT username FROM users WHERE code = %i", code);
    mysql_tquery(connectionID, queryBuffer, "OnQueryFinish", "i", THREAD_SELECT_CODE);
    return 1;
}

GetPlayerRPName(username[])
{
	for(new i = 0, l = strlen(username); i < l; i ++)
	{
	    if(username[i] == '_')
	    {
	        username[i] = ' ';
		}
	}

	return username;
}

public OnQueryFinish(threadid, extraid)
{
    new rows = cache_get_row_count(connectionID);
    switch(threadid)
    {
        case THREAD_SELECT_CODE:
        {
            if(!rows)
            {
                new DCC_Channel:channell = DCC_FindChannelById("905667779506634770");
                new str[128];

                format(str, sizeof(str), "The code you've been submitting is either invalid or used to an account that is now verified.");
                new DCC_Embed:embed = DCC_CreateEmbed("Invalid Code!", str);
                DCC_SetEmbedColor(embed, 0xFF0000);
                DCC_SendChannelEmbedMessage(channell, embed);
            }
            else
            {
                new DCC_User:user = DCC_FindUserByName(DiscordInfo[dcName], DiscordInfo[dcTag]);
                new DCC_Guild:guild = DCC_FindGuildById("905667779103977522"); // Now to get the guild ID //
                new DCC_Role:role = DCC_FindRoleById("934433462843220010"); // Verified Role
                new DCC_Role:role1 = DCC_FindRoleById("905667779103977530"); // Unverified Role
                new DCC_Channel:channell = DCC_FindChannelById("905667779506634770");
                new DCC_Channel:verlogs = DCC_FindChannelById("936583015390412830");
                new username[MAX_PLAYER_NAME], code[16], str[500], footer[128], string[128];

                cache_get_field_content(0, "username", username);
                cache_get_field_content(0, "code", code);

                format(str, sizeof(str), "Your account **%s** is now verified both In-Game and here at Discord!!! **Discord: <@%s>**. You will now be able to access general features such as Global Chat, Joining Events, Jobs, and More!!!\nHappy Gaming!!!", username, DiscordInfo[dcId]);
                new DCC_Embed:embed = DCC_CreateEmbed();
                DCC_SetEmbedTitle(embed, "Successfully Verified!!!");
                DCC_SetEmbedDescription(embed, str);
                DCC_SetEmbedColor(embed, 0x00FF00);
                format(footer, sizeof(footer), "All Rights' Reserved. Alcazar Gaming 2022");
                DCC_SetEmbedFooter(embed, footer);
                DCC_SendChannelEmbedMessage(channell, embed);
                format(string, sizeof(string), "AdmBot: Player **%s** has linked their account to <@%s>.", username, DiscordInfo[dcId]);
            	DCC_SendChannelMessage(verlogs, string);
                mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET verify = 1 WHERE username = '%e'", username);
                mysql_tquery(connectionID, queryBuffer);
                
                mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET discordname = '%s', discordtag = '%s', discordid = '%e' WHERE username = '%e'", DiscordInfo[dcName], DiscordInfo[dcTag], DiscordInfo[dcId], username);
                mysql_tquery(connectionID, queryBuffer);
                DCC_AddGuildMemberRole(guild, user, role);
                DCC_RemoveGuildMemberRole(guild, user, role1);
                format(string, sizeof(string), "%s", GetPlayerRPName(username));
                DCC_SetGuildMemberNickname(guild, user, string);
                DiscordInfo[dcId] = 0;
                DiscordInfo[dcName] = 0;
                DiscordInfo[dcTag] = 0;
            }
        }
    }
    return 1;
}


// FORWARDS
forward OnQueryFinish(threadid, extraid);