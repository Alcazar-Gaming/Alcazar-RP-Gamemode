#include <discord-connector>
#include <discord-cmd>

stock GetUserDiscord(playerid){
    new DCC_User:user = DCC_FindUserById(pData[playerid][pDiscordID]);
    new name[DCC_USERNAME_SIZE], tag[DCC_ID_SIZE], string[128];
    DCC_GetUserName(user, name, sizeof(user));
    DCC_GetUserDiscriminator(user, tag, sizeof(tag));
    format(string, sizeof(string), "%s#%i", name, tag);
    return string;
}

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

CMD:settings(playerid, params[])
{
	new string[500];
	format(string, sizeof(string), "Name:\t%s\n\
	Discord: %s\n\
	Verification:\t%s\n\
	"WHITE"     \n\
	Stats\n\
	"WHITE"Toggle Voicechat", GetRPName(playerid), GetUserDiscord(playerid), (pData[playerid][pVerified] ? (""GREEN"Verified"WHITE"") : (""RED"Not Verified")));
	ShowPlayerDialog(playerid, DIALOG_VERIFICATION, DIALOG_STYLE_LIST, "Account Verification", string, "Select", "Cancel");
	return 1;
}

DCMD:link(user, channel, params[])
{
    //new DCC_Guild:guild = DCC_FindGuildById("1009476283471773696");
    new code;

    if(channel != DCC_FindChannelById("1009476287041130621")) // Verification Channel
    {
        new DCC_Embed:embed = DCC_CreateEmbed("Wrong Channel!", "You can use this command at the <#1009476287041130621>.");
        DCC_SetEmbedColor(embed, 0xFF0000);
        DCC_SetEmbedFooter(embed, "All Rights' Reserved. Alcazar City Roleplay 2022");
        return DCC_SendChannelEmbedMessage(channel, embed);
    }
    if(sscanf(params, "i", code))
    {
        new DCC_Embed:embed = DCC_CreateEmbed();
        DCC_SetEmbedDescription(embed, "`USAGE: !link [code]`");
        DCC_SetEmbedFooter(embed, "LLC Alcazar Roleplay 2021-2022");
        return DCC_SendChannelEmbedMessage(channel, embed);
    }
    if(code == 0)
    {
        new DCC_Embed:embed = DCC_CreateEmbed();
        DCC_SetEmbedDescription(embed, "WRONG CODE");
        DCC_SetEmbedFooter(embed, "LLC Alcazar Roleplay 2021-2022");
        return DCC_SendChannelEmbedMessage(channel, embed);
    }
    
    new name[DCC_USERNAME_SIZE], id[DCC_ID_SIZE], internalid[20+1];
    DCC_GetUserId(user, internalid, sizeof(internalid));
    DCC_GetUserName(user, name, sizeof(name));
    DCC_GetUserDiscriminator(user, id, sizeof(id));
    dInfo[dcUser] = name;
    dInfo[dcUserId] = id;
    dInfo[dcUserInternalId] = internalid;

    new channelid[20+1];
    DCC_GetChannelId(channel, channelid, sizeof(channelid));
    dInfo[dcChannelID] = channelid;

    mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "SELECT verify FROM users WHERE code = %i", code);
    mysql_tquery(connectionID, queryBuffer, "IsCodeVerified", "i", code);
    return 1;
}

forward IsCodeVerified(code);
public IsCodeVerified(code)
{
    new verified = cache_get_field_content_int(0, "verify");
    new DCC_Channel:channel = DCC_FindChannelById(dInfo[dcChannelID]);

    if(!verified)
    {
        mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "SELECT username FROM users WHERE code = %i", code);
        mysql_tquery(connectionID, queryBuffer, "VerifyPlayer", "i", code);
    }
    else
    {
        new DCC_Embed:embed = DCC_CreateEmbed();
        DCC_SetEmbedTitle(embed, "Error!");
        DCC_SetEmbedDescription(embed, "The code you've been submitting has been detected as **VERIFIED**.");
        DCC_SetEmbedColor(embed, 0xFF0000);
        DCC_SetEmbedFooter(embed, "WARNING: Attempting to link an account that's not yours may put you to a punishment.");
        DCC_SendChannelEmbedMessage(channel, embed);
        dInfo[dcUser] = 0;
        dInfo[dcUserId] = 0;
        dInfo[dcUserInternalId] = 0;
    }
}

forward VerifyPlayer(code);
public VerifyPlayer(code)
{
    new rows = cache_get_row_count(connectionID);
    new DCC_Channel:channel = DCC_FindChannelById("905667779506634770");
    new DCC_Channel:log_channel = DCC_FindChannelById("936583015390412830");
    new DCC_Guild:guild = DCC_FindGuildById("905667779103977522");
    new DCC_Role:role = DCC_FindRoleById("934433462843220010");
    new DCC_Role:role1 = DCC_FindRoleById("905667779103977530");
    new DCC_User:user = DCC_FindUserByName(dInfo[dcUser], dInfo[dcUserId]);

    if(!rows)
    {
        new DCC_Embed:embed = DCC_CreateEmbed();
        DCC_SetEmbedTitle(embed, "Invalid Code!");
        DCC_SetEmbedDescription(embed, "We cannot find any user with this code. Please double check your code and try again.");
        DCC_SetEmbedColor(embed, 0xFF0000);
        DCC_SetEmbedFooter(embed, "WARNING: Attempting to link an account that's not yours may put you to a punishment.");
        DCC_SendChannelEmbedMessage(channel, embed);
        dInfo[dcUser] = 0;
        dInfo[dcUserId] = 0;
        dInfo[dcUserInternalId] = 0;
    }
    else
    {
        new username[MAX_PLAYER_NAME];
        cache_get_field_content(0, "username", username, connectionID, MAX_PLAYER_NAME);
        if(!IsPlayerOnline(username))
        {
            new str[256], string[128], string1[24];

            DCC_AddGuildMemberRole(guild, user, role);
            DCC_RemoveGuildMemberRole(guild, user, role1);

            format(string1, sizeof(string1), "%s", username);//RemoveUnderscore(username));
            DCC_SetGuildMemberNickname(guild, user, string1);

            mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET discordname = '%s', discordtag = '%s', discordid = '%e' WHERE username = '%e'", dInfo[dcUser], dInfo[dcUserId], dInfo[dcUserInternalId], username);
            mysql_tquery(connectionID, queryBuffer);

            mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET verify = 1 WHERE username = '%e'", username);
            mysql_tquery(connectionID, queryBuffer);

            format(str, sizeof(str), "Your account **%s** is now successfully linked to <@%s>. You will now be able to access general features such as Global Chat, Joining Events, Jobs, and More!!!\n\n**Happy Gaming!**", username, dInfo[dcUserInternalId]);
            new DCC_Embed:embed = DCC_CreateEmbed();
            DCC_SetEmbedTitle(embed, "Successfully Verified!!!");
            DCC_SetEmbedDescription(embed, str);
            DCC_SetEmbedColor(embed, 0x00FF00);
            DCC_SetEmbedFooter(embed, "All Rights' Reserved. Alcazar Gaming 2022");
            DCC_SendChannelEmbedMessage(channel, embed);

            format(string, sizeof(string), "AdmBot: Player **%s** has linked their account to <@%s>.", username, dInfo[dcUserInternalId]);
            DCC_SendChannelMessage(log_channel, string);
        }
        else
        {
            for(new i = 0; i < MAX_PLAYERS; i ++)
            {
                cache_get_field_content_int(0, "code", code);
                if(pData[i][pCode] == code)
                {
                    pData[i][pVerified] = 1;
                    pData[i][pCode] = 0;
                    pData[i][pDiscordName] = dInfo[dcUser];
                    pData[i][pDiscordTag] = dInfo[dcUserId];
                    pData[i][pDiscordID] = dInfo[dcUserInternalId];
                    mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET discordname = '%s', discordtag = '%s', discordid = '%e' WHERE username = '%e'", dInfo[dcUser], dInfo[dcUserId], dInfo[dcUserInternalId], username);
                    mysql_tquery(connectionID, queryBuffer);

                    mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET verify = 1 WHERE username = '%e'", username);
                    mysql_tquery(connectionID, queryBuffer);

                    new string[128], string2[128], str[128];
                    format(string2, sizeof(string2), "Your account has been linked to %s#%i. You may now be able to access general commands like global chat, newbie chat, jobs, etc...", dInfo[dcUser], dInfo[dcUserId]);
                    SendClientMessage(i, COLOR_AQUA, string2);
                    SendClientMessage(i, COLOR_AQUA, "Happy Gaming!!!");
                    DCC_AddGuildMemberRole(guild, user, role);
                    DCC_RemoveGuildMemberRole(guild, user, role1);
                    DCC_SetGuildMemberNickname(guild, user, GetRPName(i));
                    format(string, sizeof(string), "AdmBot: Player **%s** has linked their account to <@%s>.", username, pData[i][pDiscordID]);
                    DCC_SendChannelMessage(log_channel, string);
                    format(str, sizeof(str), "Your account **%s** is now successfully linked to your discord account!!! Discord: <@%s>. You will now be able to access general features such as Global Chat, Joining Events, Jobs, and More!!!\n\n**Happy Gaming!**", username, pData[i][pDiscordID]);
                    new DCC_Embed:embed = DCC_CreateEmbed();
                    DCC_SetEmbedTitle(embed, "Successfully Verified!!!");
                    DCC_SetEmbedDescription(embed, str);
                    DCC_SetEmbedColor(embed, 0x00FF00);
                    DCC_SetEmbedFooter(embed, "All Rights' Reserved. Alcazar Gaming 2022");
                    DCC_SendChannelEmbedMessage(channel, embed);
                    dInfo[dcUser] = 0;
                    dInfo[dcUserId] = 0;
                    dInfo[dcUserInternalId] = 0;
                }
            }
        }
        
    }
}

forward CheckPlayerName(playerid);
public CheckPlayerName(playerid)
{
    new DCC_Channel:channel = DCC_FindChannelById("921323540547010581");
    new string[128];
    cache_get_field_content(0, "discordid", pData[playerid][pDiscordID], connectionID, 20+1);
    new DCC_Embed:embed = DCC_CreateEmbed();
    format(string, sizeof(string), "**[CONNECTION] <@%s> has entered to the server.**", pData[playerid][pDiscordID]);
    DCC_SetEmbedDescription(embed, string);
	DCC_SendChannelEmbedMessage(channel, embed);
}