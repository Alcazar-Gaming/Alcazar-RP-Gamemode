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
/                                 Pawn File: Discord System
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


#define DCMD_STRICT_CASE //Defining this will make commands case-sensitive. !test and !TEST will become different


stock GetPlayerID(playername[])
{
  for(new i = 0; i <= MAX_PLAYERS; i++)
  {
    if(IsPlayerConnected(i))
    {
      new playername2[MAX_PLAYER_NAME];
      GetPlayerName(i, playername2, sizeof(playername2));
      if(strcmp(playername2, playername, true, strlen(playername)) == 0)
      {
        return i;
      }
    }
  }
  return INVALID_PLAYER_ID;
}

DCMD:global(user, channel, params[]) {
    new DCC_Guild:guild = DCC_FindGuildById("905667779103977522");
    if(isnull(params)) {
        DCC_SendChannelMessage(channel, "SYNTAX: /global [msg]");
    } else {

        new str[144], username[33];
        DCC_GetGuildMemberNickname(guild, user, username);
        if(isnull(username))
        {
            DCC_GetUserName(user, username, sizeof(username));
        }
        else
        {
            DCC_GetGuildMemberNickname(guild, user, username);
        }
        format(str, sizeof(str), "(( [Discord Administrator] %s: %s ))", username, params);
        DCC_SendChannelMessage(channel, str);
        SendClientMessageToAll(0x4F9C4FFF, str); //Broadcast message to server.
    }
    return 1;
}

DCMD:players(user, channel, params[]) {

    new szDialog[(1024 * 2)], title[128];

	foreach(new i : Player)
	{
		format(szDialog, sizeof(szDialog), "%s(%d) - %s - %d - %s`\n`", szDialog, i, GetPlayerNameEx(i), GetPlayerPing(i), IsPlayerAndroid(i) ? ("Mobile") : ("PC/Desktop"));
	}

	format(title, sizeof(title), "%s (%d/%d)\tPlatform", SERVER_NAME, Iter_Count(Player), MAX_PLAYERS);
	DCC_SendChannelMessage(channel, title);
	DCC_SendChannelMessage(channel, szDialog);
    return 1;
}
new gGMX;
DCMD:gmx(user, channel, params[]) {
	new DCC_Role:role = DCC_FindRoleById("905667779162673163");
    new DCC_Guild:guild = DCC_FindGuildById("905667779103977522");
	new bool:hasRole;
    DCC_HasGuildMemberRole(guild, user, role, hasRole);
	if(!hasRole)
	{
		return DCC_SendChannelMessage(channel, "You don't have the role required for this command.");
	}
	if(gGMX)
	{
	    return DCC_SendChannelMessage(channel, "You have already called for a server restart. You can't cancel it.");
	}
    new name[32 + 1];
    DCC_GetGuildMemberNickname(guild, user, name);

    foreach(new i : Player)
	{
		new string2[128], playerid;
		format(string2, sizeof(string2), " We will be having a quick restart after 15 seconds. Please ~b~park~w~ your vehicles.");
		DCC_SendChannelMessage(channel, string2);
		PlayerTextDrawSetString(i, DyuzeeeTD[i][0], string2);
		PlayerTextDrawShow(i, DyuzeeeTD[i][0]);
		SetTimerEx("GMX", 15000, false, "i", playerid);
        dInfo[dcGMX] = 1;
        dInfo[dcGMXName] = name;
	}
	return 1;
}

DCMD:kick(user, channel, params[]) {
	new targetid, reason[128];

    new DCC_Role:role = DCC_FindRoleById("905667779145900090");
    new DCC_Guild:guild = DCC_FindGuildById("905667779103977522");
	new bool:hasRole;
    DCC_HasGuildMemberRole(guild, user, role, hasRole);
	if(!hasRole)
	{
		return DCC_SendChannelMessage(channel, "You don't have the role required for this command.");
	}
	if(sscanf(params, "us[128]", targetid, reason)) {
        DCC_SendChannelMessage(channel, "Usage: /kick [playerid] [reason]");
		return 1;
    }
	if(!IsPlayerConnected(targetid))
	{
		DCC_SendChannelMessage(channel, "That player is not connected.");
		return 1;
	} else {
        new name[32+1];
        DCC_GetGuildMemberNickname(guild, user, name);
        Log_Write("log_punishments", "Discord Admin %s kicked %s (uid: %i), reason: %s", GetPlayerNameEx(targetid), pData[targetid][pID], reason);
		SMA(COLOR_LIGHTRED, "AdmCmd: %s was kicked by a Discord Admin, reason: %s", GetRPName(targetid), reason);
		KickPlayer(targetid);
    }
    return 1;
}

public OnDiscordCommandAttempt(DCC_User:user, DCC_Channel:channel, cmdtext[]) {

    if(!strcmp(cmdtext, "secret", true)) {
    
        //if user has no particular role or privilege:
        return 0;
    }
    return 1;
}

public OnDiscordCommandPerformed(DCC_User:user, DCC_Channel:channel, cmdtext[], success) {

    if(!success) {
        new DCC_Embed:embed = DCC_CreateEmbed();
        DCC_SetEmbedTitle(embed, "Unknown Command!");
        DCC_SetEmbedDescription(embed, "This command does not exist in my system. Please contact any developer(s) to add more commands to my system. **Happy Gaming!!!**");
        DCC_SetEmbedFooter(embed, "All Rights' Reserved, Alcazar City Roleplay 2022");
        DCC_SendChannelEmbedMessage(channel, embed);
        //DCC_SendChannelMessage(channel, "This command does not exist!");
    }
    return 1;
}

public DCC_OnUserUpdate(DCC_User:user)
{
    new name[32+1], id[20+1], user_id[20+1];
    DCC_GetUserId(user, user_id, sizeof(user_id)); // Getting the User's Internal ID
    DCC_GetUserName(user, name, sizeof(name)); // Getting the User Name
    DCC_GetUserDiscriminator(user, id, sizeof(id)); // Getting the user Tag
    mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET discordname = %s, discordtag = %i WHERE discordid = %i", user_id);
    mysql_tquery(connectionID, queryBuffer);
    return 1;
}

stock GetDiscordName(DCC_User:user)
{
    new nickname[DCC_NICKNAME_SIZE], name[DCC_USERNAME_SIZE], username[DCC_USERNAME_SIZE];
    new DCC_Guild:guild = DCC_FindGuildById("905667779103977522");
    DCC_GetGuildMemberNickname(guild, user, nickname, DCC_NICKNAME_SIZE);
    DCC_GetUserName(user, username, DCC_USERNAME_SIZE);
    if(!nickname)
    {
        format(name, DCC_NICKNAME_SIZE, "%s", username);
    }
    else
    {
        format(name, DCC_NICKNAME_SIZE, "%s", nickname);
    }
    return name;
}

IsPlayerVerified(playerid)
{ 
    return pData[playerid][pVerified];
}