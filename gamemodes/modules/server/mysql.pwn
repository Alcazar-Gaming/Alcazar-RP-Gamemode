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
/                                 Pawn File: MySQL Information
/                                 Module Folder: Server
/
/                               Module Created by:
/	                        		Stewart - Stewart#8221 - Alcazar City Roleplay
/
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
*/

#define MYSQL_HOSTNAME  "localhost"
#define MYSQL_DATABASE  "stewart"
#define MYSQL_USERNAME  "stewart"
#define MYSQL_PASSWORD  "yvy1ro7dz1"

new connectionID;
new queryBuffer[1024];

forward OnQueryFinished(threadid, extraid);

public OnGameModeInit()
{
    new DCC_Channel:channel = DCC_FindChannelById("921323540547010581");
    connectionID = mysql_connect(MYSQL_HOSTNAME, MYSQL_USERNAME, MYSQL_DATABASE, MYSQL_PASSWORD);
	if(mysql_errno(connectionID))
	{
	    print("Unable to establish a connection with the MySQL server...");
	    SendRconCommand("exit");
		DCC_SendChannelMessage(channel, "Server is running but not responding due to MySQL Connections. Server Shutting Down...");
	    return 0;
	}
	else 
	{
        new DCC_Embed:embed = DCC_CreateEmbed();
        new string[700];
        new stats[400+1];
        GetNetworkStats(stats, sizeof(stats));

        DCC_SetEmbedTitle(embed, "Server has started Running.");
        format(string, sizeof(string), "Run Time: %s\nServer Tick Rate(FPS): %i\n%s", GetDate(), GetServerTickRate(), stats);
		DCC_SetEmbedDescription(embed, string);
        DCC_SetEmbedFooter(embed, "All rights' reserved, Alcazar Roleplay 2022");
        DCC_SendChannelEmbedMessage(channel, embed);
	}
    #if defined SQL_OnGameModeInit
        return SQL_OnGameModeInit();
    #else
        return 1;
    #endif
}
#if defined _ALS_OnGameModeInit
    #undef OnGameModeInit
#else
    #define _ALS_OnGameModeInit
#endif
#define OnGameModeInit SQL_OnGameModeInit
#if defined SQL_OnGameModeInit
    forward SQL_OnGameModeInit();
#endif

public OnGameModeExit()
{
    mysql_close(connectionID);
    #if defined SQL_OnGameModeExit
        return SQL_OnGameModeExit();
    #else
        return 1;
    #endif
}
#if defined _ALS_OnGameModeExit
    #undef OnGameModeExit
#else
    #define _ALS_OnGameModeExit
#endif
#define OnGameModeExit SQL_OnGameModeExit
#if defined SQL_OnGameModeExit
    forward SQL_OnGameModeExit();
#endif