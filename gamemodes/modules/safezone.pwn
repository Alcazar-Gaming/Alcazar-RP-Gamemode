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
/                                 Pawn File: Safezone Script
/                                 Module Folder: Modules
/
/                               Module Created by:
/	                        		Stewart - Stewart#8221 - Alcazar City Roleplay
/									
/								
/									Dynamic Safezone System Script Created By Stewart
/
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
*/

enum szInfo
{
    szID,
	szExists,
	Float:szPosX,
 	Float:szPosY,
 	Float:szPosZ,
 	Float:szPosA,
 	szSize,
 	szIcon,
 	szLabel,
 	szPickup,
 	Text3D: szTextID,
};
new SafezoneInfo[MAX_SAFEZONES][szInfo];

GetNearbySafezone(playerid)
{
	for(new i = 0; i < MAX_SAFEZONES; i ++)
	{
	    if(SafezoneInfo[i][szExists] && IsPlayerInRangeOfPoint(playerid, 3.0, SafezoneInfo[i][szPosX], SafezoneInfo[i][szPosY], SafezoneInfo[i][szPosZ]))
	    {
	        return i;
	    }
	}
	return -1;
}

ReloadSafezone(szid)
{
	new string[500];
	if(SafezoneInfo[szid][szExists])
	{
	    DestroyDynamic3DTextLabel(SafezoneInfo[szid][szTextID]);
	    DestroyDynamicObject(SafezoneInfo[szid][szPickup]);

	    if(SafezoneInfo[szid][szLabel])
	    {
			format(string, sizeof(string), "Safezone"YELLOW"[%i]"WHITE" Point\nSafezone Range Meter: "YELLOW"%i"WHITE"\n\nYour "RED"damage"WHITE" within this area is "GREEN"disabled"WHITE"\n", szid, SafezoneInfo[szid][szSize]);
			SafezoneInfo[szid][szTextID] = CreateDynamic3DTextLabel(string, -1, SafezoneInfo[szid][szPosX], SafezoneInfo[szid][szPosY], SafezoneInfo[szid][szPosZ]+0.5,30.0);
	    }
	    SafezoneInfo[szid][szPickup] = CreateDynamicPickup(SafezoneInfo[szid][szIcon], 1, SafezoneInfo[szid][szPosX], SafezoneInfo[szid][szPosY], SafezoneInfo[szid][szPosZ]);
	}
}

public OnAdminCreateSafezone(playerid, sz, size, Float:x, Float:y, Float:z, Float:a)
{
    SafezoneInfo[sz][szID] = cache_insert_id(connectionID);
	SafezoneInfo[sz][szExists] = 1;
    SafezoneInfo[sz][szPosX] = x;
    SafezoneInfo[sz][szPosY] = y;
    SafezoneInfo[sz][szPosZ] = z;
    SafezoneInfo[sz][szPosA] = a;
    SafezoneInfo[sz][szSize] = size;
    SafezoneInfo[sz][szIcon] = 19134;
    SafezoneInfo[sz][szPickup] = -1;
	SafezoneInfo[sz][szTextID] = Text3D:INVALID_3DTEXT_ID;
    SafezoneInfo[sz][szLabel] = 1;

	ReloadSafezone(sz);
	SAM(COLOR_LIGHTRED, "AdmCmd: %s %s has created Safezone at %s.", GetStaffRank(playerid), GetRPName(playerid), GetZoneName(x, y, z));
	SCMf(playerid, COLOR_GREEN, "** Safezone [%i] created at %.1f, %.1f, %.1f.", sz, x, y, z);
}

public OnGameModeInit()
{
    mysql_tquery(connectionID, "SELECT * FROM safezones", "OnQueryFinished", "ii", THREAD_LOAD_SAFEZONES, 0);
    #if defined SZ_OnGameModeInit
        return SZ_OnGameModeInit();
    #else
        return 1;
    #endif
}
#if defined _ALS_OnGameModeInit
    #undef OnGameModeInit
#else
    #define _ALS_OnGameModeInit
#endif
#define OnGameModeInit SZ_OnGameModeInit
#if defined SZ_OnGameModeInit
    forward SZ_OnGameModeInit();
#endif

/*public OnPlayerUpdate(playerid)
{
    
    #if defined SZ_OnPlayerUpdate
        return SZ_OnPlayerUpdate(playerid);
    #else
        return 1;
    #endif
}
#if defined _ALS_OnPlayerUpdate
    #undef OnPlayerUpdate
#else
    #define _ALS_OnPlayerUpdate
#endif
#define OnPlayerUpdate SZ_OnPlayerUpdate
#if defined SZ_OnPlayerUpdate
    forward SZ_OnPlayerUpdate();
#endif*/

// Commmands
CMD:createsz(playerid, params[])
{
    new Float:x, Float:y, Float:z, Float:a, size;
	if(pData[playerid][pAdmin] < 6)
	{
	    return SCM(playerid, COLOR_SYNTAX, "You are not authorized to use this command.");
	}
    if(sscanf(params, "i[32]", size))
	{
	    SendClientMessage(playerid, COLOR_SYNTAX, "USAGE: /createsz [size]");
		SendClientMessage(playerid, COLOR_WHITE, "** NOTE: The safezone will be created at the coordinates you are standing on.");
		return 1;
	}
    GetPlayerPos(playerid, x, y, z);
 	GetPlayerFacingAngle(playerid, a);
    for(new i = 0; i < MAX_SAFEZONES; i ++)
	{
		if(!SafezoneInfo[i][szExists])
		{
		    mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "INSERT INTO safezones (size, pos_x, pos_y, pos_z, pos_r) VALUES('%i', '%f', '%f', '%f', '%f')", size, x, y, z, a);
		    mysql_tquery(connectionID, queryBuffer, "OnAdminCreateSafezone", "iiiffff", playerid, i, size, x, y, z, a);
		    return 1;
		}
	}

	SendClientMessage(playerid, COLOR_GREY, "Safezone slots are currently full. Ask developers to increase the internal limit.");
	return 1;
}

CMD:removesz(playerid, params[])
{
	new loc;

	if(pData[playerid][pAdmin] < 6)
	{
	    return SCM(playerid, COLOR_SYNTAX, "You are not authorized to use this command.");
	}
	if(sscanf(params, "i", loc))
	{
	    return SendClientMessage(playerid, COLOR_SYNTAX, "USAGE: /removesz [ID] (/nearest)");
	}
	if(!(0 <= loc < MAX_SAFEZONES) || !SafezoneInfo[loc][szExists])
	{
	    return SendClientMessage(playerid, COLOR_GREY, "Invalid Safezone or Static.");
	}
    DestroyDynamic3DTextLabel(SafezoneInfo[loc][szTextID]);
    DestroyDynamicPickup(SafezoneInfo[loc][szPickup]);

	mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "DELETE FROM safezones WHERE id = %i", SafezoneInfo[loc][szID]);
	mysql_tquery(connectionID, queryBuffer);
	SafezoneInfo[loc][szExists] = false;
	SafezoneInfo[loc][szID] = 0;

	SM(playerid, COLOR_WHITE, "** You have removed safezone [%i].", loc);
	return 1;
}


// Forwards
forward OnAdminCreateSafezone(playerid, sz, size, Float:x, Float:y, Float:z, Float:a);