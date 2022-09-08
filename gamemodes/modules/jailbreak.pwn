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
/                                 Pawn File: Jailbreak Script
/                                 Module Folder: Modules
/
/                               Module Created by:
/	                        		Stewart - Stewart#8221 - Alcazar City Roleplay
/
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
*/

CMD:buytool(playerid, params[])
{
	if(!IsPlayerInRangeOfPoint(playerid, 3.0, -2772.9460, 376.7526, 3000.6462+ 0.4))
	{
		return SendClientMessage(playerid, COLOR_SYNTAX, "You are not on the Police Desk.");
	}
	pData[playerid][pTool]++;
	mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET tool = %i WHERE uid = %i", pData[playerid][pTool], pData[playerid][pID]);
	mysql_tquery(connectionID, queryBuffer);
	return 1;
}

CMD:breakjail(playerid, params[])
{
	if(pData[playerid][pTool] < 1)
	{
		return SendClientMessage(playerid, COLOR_SYNTAX, "You don't have the tool(s) that is needed to jailbreak.");
	}
	if(pData[playerid][pJailTime] < 1)
	{
		return SendClientMessage(playerid, COLOR_SYNTAX, "You are currently not jailed.");
	}
	SetTimerEx("Jailbreak", 10000, false, "i", playerid);
	return 1;
}

forward Jailbreak(playerid);
public Jailbreak(playerid)
{
	switch(random(5))
	{
		case 0:
		{
			SetPlayerPos(playerid, 1764.8630, -1568.7178, 1742.4944);
			pData[playerid][pTool]--;
            mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET tool = %i WHERE uid = %i", pData[playerid][pTool], pData[playerid][pID]);
	        mysql_tquery(connectionID, queryBuffer);
		}
        case 1:
		{
			SetPlayerPos(playerid, 1757.9783,-1578.1486,1738.7173);
			pData[playerid][pTool]--;
            mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET tool = %i WHERE uid = %i", pData[playerid][pTool], pData[playerid][pID]);
	        mysql_tquery(connectionID, queryBuffer);
		}
        case 2:
		{
			SetPlayerPos(playerid, 1778.8473,-1567.7915,1734.9430);
			pData[playerid][pTool]--;
            mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET tool = %i WHERE uid = %i", pData[playerid][pTool], pData[playerid][pID]);
	        mysql_tquery(connectionID, queryBuffer);
		}
        case 3:
		{
			SetPlayerPos(playerid, -1614.0031,720.2267,909.8140);
			pData[playerid][pTool]--;
            mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET tool = %i WHERE uid = %i", pData[playerid][pTool], pData[playerid][pID]);
	        mysql_tquery(connectionID, queryBuffer);
		}
        case 4:
		{
			SetPlayerPos(playerid, -1612.9209,716.7339,909.8140);
			pData[playerid][pTool]--;
            mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET tool = %i WHERE uid = %i", pData[playerid][pTool], pData[playerid][pID]);
	        mysql_tquery(connectionID, queryBuffer);
		}
        case 5:
		{
			SetPlayerPos(playerid, -1613.2610,737.6939,910.4169);
			pData[playerid][pTool]--;
            mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET tool = %i WHERE uid = %i", pData[playerid][pTool], pData[playerid][pID]);
	        mysql_tquery(connectionID, queryBuffer);
		}
	}
    GameTextForPlayer(playerid, "Find the exit to escape.", 3000, 3);
    pData[playerid][pJailBreak] = 1;
    mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "INSERT INTO charges VALUES(null, %i, 'The State', NOW(), 'Jail Break')", pData[playerid][pID]);
    mysql_tquery(connectionID, queryBuffer);

    mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET wantedlevel = 6, crimes = crimes + 1 WHERE uid = %i", pData[playerid][pID]);
    mysql_tquery(connectionID, queryBuffer);
    return 1;
}