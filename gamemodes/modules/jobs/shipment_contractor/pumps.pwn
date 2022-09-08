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
/                                 Pawn File: Pumps for Shipment Contractor System
/                                 Module Folder: shipment_contractor
/
/                               Module Created by:
/	                        		Stewart - Stewart#8221 - Alcazar City Roleplay
/
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
*/

#define MAX_PUMPS       50

enum pumpInfo
{
    pumpID,
    pumpExists,
    Float:PosX,
    Float:PosY,
    Float:PosZ,
    Float:PosA,
    Float:pumpLiters,
    pumpIcon,
 	pumpLabel,
 	pumpPickup,
 	Text3D: pumpTextID
}
new PumpInfo[MAX_PUMPS][pumpInfo];

ReloadPumps(pumpid)
{
    new string[128];
    if(PumpInfo[pumpid][pumpExists])
    {
        DestroyDynamic3DTextLabel(PumpInfo[pumpid][pumpTextID]);
        DestroyDynamicObject(PumpInfo[pumpid][pumpPickup]);

        if(PumpInfo[pumpid][pumpLabel])
        {
            format(string, sizeof(string), "Gasoline Pump\nFluid pump: "YELLOW"%f\n"SVRCLR"Address:"WHITE" %s %i", PumpInfo[pumpid][pumpLiters], GetZoneName(PumpInfo[pumpid][PosX], PumpInfo[pumpid][PosY], PumpInfo[pumpid][PosZ]), pumpid);
            PumpInfo[pumpid][pumpTextID] = CreateDynamic3DTextLabel(string, -1, PumpInfo[pumpid][PosX], PumpInfo[pumpid][PosY], PumpInfo[pumpid][PosZ]+0.5, 30.0);
        }
        PumpInfo[pumpid][pumpPickup] = CreateDynamicPickup(PumpInfo[pumpid][pumpIcon], 1, PumpInfo[pumpid][PosX], PumpInfo[pumpid][PosY], PumpInfo[pumpid][PosZ]);
    }
}

stock GetNearbyPumps(playerid, Float:radius = 2.0)
{
    for(new i = 0; i < MAX_PUMPS; i ++)
    {
        if(PumpInfo[i][pumpExists] && IsPlayerInRangeOfPoint(playerid, radius, PumpInfo[i][PosX], PumpInfo[i][PosY], PumpInfo[i][PosZ]))
        {
            return i;
        }
    }
    return -1;
}

forward CreatePump(playerid, pumpid, Float:x, Float:y, Float:z, Float:a);
public CreatePump(playerid, pumpid, Float:x, Float:y, Float:z, Float:a)
{
    PumpInfo[pumpid][pumpID] = cache_insert_id(connectionID);
    PumpInfo[pumpid][pumpExists] = 1;

    PumpInfo[pumpid][PosX] = x;
    PumpInfo[pumpid][PosY] = y;
    PumpInfo[pumpid][PosZ] = z;
    PumpInfo[pumpid][PosA] = a;

    PumpInfo[pumpid][pumpLiters] = 0.0;

    PumpInfo[pumpid][pumpIcon] = 1239;
    PumpInfo[pumpid][pumpPickup] = -1;
    PumpInfo[pumpid][pumpLabel] = 1;
    PumpInfo[pumpid][pumpTextID] = Text3D:INVALID_3DTEXT_ID;

    ReloadPumps(pumpid);

    // Admin Log
    SAM(COLOR_LIGHTRED, "AdmCmd: %s %s has created a pump station at %s", GetZoneName(x, y, z));
    SM(playerid, COLOR_WHITE, "You have created pump station at %s", GetZoneName(x, y, z));
}

CMD:createpump(playerid, params[])
{
    new Float:x, Float:y, Float:z, Float:a;
    if(pData[playerid][pAdmin] < 6)
    {
        return SCM(playerid, COLOR_SYNTAX, "You are not authorized to use this command.");
    }
    if(sscanf(params, "s[32]", "confirm"))
    {
        return SCM(playerid, COLOR_SYNTAX, "Usage: /createpump [confirm]");
    }
    GetPlayerPos(playerid, x, y, z);
    GetPlayerFacingAngle(playerid, a);
    for(new i = 0; i < MAX_PUMPS; i ++)
    {
        if(!PumpInfo[i][pumpExists])
        {
            mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "INSERT INTO safezones (posx, posy, posz, posa) VALUES('%f', '%f', '%f', '%f')", x, y, z, a);
		    mysql_tquery(connectionID, queryBuffer, "CreatePump", "iiffff", playerid, i, x, y, z, a);
            return 1;
        }
    }

    SendClientMessage(playerid, COLOR_WHITE, "Our Dynamic Pump Slot is Full. Please contact any Developer to adjust the maximum count of Pump.");
    return 1;
}

CMD:editpump(playerid, params[])
{
    new option[10], pumpid, param[128];
    if(pData[playerid][pAdmin] < 7)
    {
        return SCM(playerid, COLOR_SYNTAX, "You are not authorized to use this command.");
    }
    if(sscanf(params, "is[10]S()[128]", pumpid, option, param))
    {
        SCM(playerid, COLOR_SYNTAX, "Usage: /editpump [pump ID] [option]");
        SCM(playerid, COLOR_WHITE, "Options: liter");
    }
    if(!(0 <= pumpid < MAX_PUMPS) || !PumpInfo[pumpid][pumpExists])
    {
        return SCM(playerid, COLOR_SYNTAX, "You have entered an invalid pump ID.");
    }

    if(!strcmp(option, "liter", true))
    {
        new Float:liter;
        if(sscanf(param, "f", liter))
        {
            SCM(playerid, COLOR_SYNTAX, "Usage: /editpump [pump ID] [liter] [amount(in float)]");
            SCM(playerid, COLOR_WHITE, "Please be advised that the amount needed is a decimal form. Like 0.1, 4.3, etc...");
            return 1;
        }


    }
    return 1;
}

CMD:removepump(playerid, params[])
{
    new pumpid;
    if(pData[playerid][pAdmin] < 6)
    {
        return SCM(playerid, COLOR_SYNTAX, "You are not authorized to use this command."); 
    }
    if(sscanf(params, "i", pumpid))
    {
        return SCM(playerid, COLOR_SYNTAX, "Usage: /removepump [pump ID]");
    }
    if(!(0 <= pumpid < MAX_PUMPS) || !PumpInfo[pumpid][pumpExists])
    {
        return SCM(playerid, COLOR_SYNTAX, "You have entered an invalid pump ID.");
    }

    DestroyDynamic3DTextLabel(PumpInfo[pumpid][pumpTextID]);
    DestroyDynamicObject(PumpInfo[pumpid][pumpPickup]);

    mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "DELETE FROM pumps where id = %i", PumpInfo[pumpid][pumpID]);
    mysql_tquery(connectionID, queryBuffer);
    PumpInfo[pumpid][pumpExists] = false;
    PumpInfo[pumpid][pumpID] = 0;

    SM(playerid, COLOR_WHITE, "** You have removed Pump[%i].", pumpid);
    return 1;
}