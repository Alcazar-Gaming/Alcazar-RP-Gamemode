CMD:g(playerid, params[])
{
	new string[256], message[128];
    new DCC_Channel:commandChannel = DCC_FindChannelById("921323540547010581");
    
    if(pData[playerid][pJailTime] > 0) return SendClientMessage(playerid, COLOR_WHITE, "Cannot use this command while in-jail.");
   	if(pData[playerid][pVerified] == 0)
	{
		return SCM(playerid, COLOR_RED, "You cannot use this command unless you are verified. [Type /settings for your account to be verified]");
	}
	if(sscanf(params, "s[128]", message))
	{
	    return SCM(playerid, COLOR_SYNTAX, "Usage: /g [global chat]");
	}
	if(!enabledGlobal && pData[playerid][pAdmin] < 2)
	{
	    return SCM(playerid, COLOR_SYNTAX, "The global channel is disabled at the moment.");
	}
	if(pData[playerid][pGlobalMuted])
	{
	    return SCM(playerid, COLOR_SYNTAX, "You are muted from speaking in this channel.");
	}
    if(pData[playerid][pToggleGlobal])
	{
	    return SCM(playerid, COLOR_SYNTAX, "You can't speak in the global chat as you have it toggled.");
	}
	if(gettime() - pData[playerid][pLastGlobal] < 30)
	{
	    return SM(playerid, COLOR_SYNTAX, "You can only speak in this channel every 30 seconds. Please wait %i more seconds.", 30 - (gettime() - pData[playerid][pLastGlobal]));
	}
	if(strfind(message, "fuck", true) != -1)
	{
		strreplace(message, "fuck", "####");
	}
	if(strfind(message, "fu", true) != -1)
	{
		strreplace(message, "fu", "##");
	}
	if(strfind(message, "shit", true) != -1)
	{
		strreplace(message, "shit", "####");
	}
	if(strfind(message, "bitch", true) != -1)
	{
		strreplace(message, "shit", "####");
	}
	if(strfind(message, "tangina", true) != -1)
	{
		strreplace(message, "tangina", "#######");
	}
	if(strfind(message, "ass", true) != -1 || strfind(message, "wtf", true) != -1)
	{
		strreplace(message, "ass", "###");
	}

    else if((!isnull(pData[playerid][pCustomTitle]) && strcmp(pData[playerid][pCustomTitle], "None", true) != 0 && strcmp(pData[playerid][pCustomTitle], "0", true) != 0) && strcmp(pData[playerid][pCustomTitle], "NULL", true) != 0) {
	    new color;
		if(pData[playerid][pCustomTColor] == -1 || pData[playerid][pCustomTColor] == -256)
		{
	    	color = 0xC8C8C8FF;
		}
		else
		{
		    color = pData[playerid][pCustomTColor];
		}
	    format(string, sizeof(string), "{%06x}%s{4F9C4F}", color >>> 8, pData[playerid][pCustomTitle]);
	}
	else if(pData[playerid][pStaffLeader])
	{
		format(string, sizeof(string), "%s{4F9C4F}", GetStaffLeaderRank(playerid));
	}
	else if(pData[playerid][pStaff])
	{
		format(string, sizeof(string), "%s{4F9C4F}", GetAdminDivisionFull(playerid));
	}
	else if(pData[playerid][pDeveloper])
	{
		string = "Developer";
	}
	else if(pData[playerid][pHelper] > 0)
	{
	    format(string, sizeof(string), "%s", GetHelperRank(playerid));
	}
	else if(pData[playerid][pFormerAdmin])
	{
	    string = "Former Admin";
	}
	else if(pData[playerid][pDonator] > 0)
	{

	    format(string, sizeof(string), "%s{4F9C4F}", GetDonatorRank(pData[playerid][pDonator]));
	}
	else if(pData[playerid][pLevel] >= 2) {
	    format(string, sizeof(string), "Level %i Player", pData[playerid][pLevel]);
	}
	else
	{
        string = "Newbie";
	}
	foreach(new i : Player)
	{
		if(!pData[i][pToggleGlobal])
		{
		    if(strlen(message) > MAX_SPLIT_LENGTH)
		    {
		        SCMf(i, 0xB8FFBCFF, "(( %s %s%s: %.*s...))", IsPlayerAndroid(playerid) ? ("{EEFFA4}CP{4F9C4F}") : ("{EEFFA4}PC{4F9C4F}"), string, GetRPName(playerid), MAX_SPLIT_LENGTH, message);
		        SCMf(i, 0xB8FFBCFF, "(( %s %s: ...%s ))", string, GetRPName(playerid), message[MAX_SPLIT_LENGTH]);
				if(enabledglobal)
				{
					format(string, sizeof(string), "(( %s %s %s: %.*s...))", IsPlayerAndroid(playerid) ? ("CP") : ("PC"), string, GetRPName(playerid), MAX_SPLIT_LENGTH, message);
					format(string, sizeof(string), "(( %s %s: ...%s ))", string, GetRPName(playerid), message[MAX_SPLIT_LENGTH]);
					DCC_SendChannelMessage(commandChannel, string);
				}
			}
			else
			{
				SCMf(i, 0xB8FFBCFF, "(( %s %s %s: %s ))", IsPlayerAndroid(playerid) ? ("{EEFFA4}CP{4F9C4F}") : ("{EEFFA4}PC{4F9C4F}"), string, GetRPName(playerid), message);
				if(enabledglobal)
				{
					format(string, sizeof(string), "(( %s %s %s : %s ))", IsPlayerAndroid(playerid) ? ("CP") : ("PC"), string, GetRPName(playerid), message);
					DCC_SendChannelMessage(commandChannel, string);
				}
			}
		}
	}

	if(pData[playerid][pAdmin] < 2 && !pData[playerid][pFormerAdmin])
	{
		pData[playerid][pLastGlobal] = gettime();
	}

	return 1;
}