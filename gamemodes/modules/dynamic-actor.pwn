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
/                                 Pawn File: Dynamic Actor Script
/                                 Module Folder: Modules
/
/                               Module Created by:
/	                        		Stewart - Stewart#8221 - Alcazar City Roleplay
/									
/								
/									Dynamic Actor System Script Created By Stewart
/
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
*/

forward OnAdminCreateDynamicActor(playerid, id, skin, label[], world, Float:x, Float:y, Float:z, Float:a);

enum acInfo
{
    acID,
	acExists,
	Float:acPosX,
 	Float:acPosY,
 	Float:acPosZ,
 	Float:acPosA,
    acSkin,
 	acModel,
 	acLabel[64],
    acWorld,
 	Text3D: acTextID,
};
new ActorInfo[MAX_DYNAMICACTORS][acInfo];

ReloadActors(actorid)
{
    if(ActorInfo[actorid][acExists])
    {
        DestroyDynamic3DTextLabel(ActorInfo[actorid][acTextID]);
	    DestroyActor(ActorInfo[actorid][acModel]);

	    ActorInfo[actorid][acModel] = CreateActor(ActorInfo[actorid][acSkin], ActorInfo[actorid][acPosX], ActorInfo[actorid][acPosY], ActorInfo[actorid][acPosZ], ActorInfo[actorid][acPosA]);
        ActorInfo[actorid][acTextID] = CreateDynamic3DTextLabel(ActorInfo[actorid][acLabel], -1, ActorInfo[actorid][acPosX], ActorInfo[actorid][acPosY], ActorInfo[actorid][acPosZ]+0.5,30.0);
        SetActorVirtualWorld(ActorInfo[actorid][acModel], ActorInfo[actorid][acWorld]);
    }
}

public OnAdminCreateDynamicActor(playerid, id, skin, label[], world, Float:x, Float:y, Float:z, Float:a)
{
    strcpy(ActorInfo[id][acLabel], label, 64);
    ActorInfo[id][acID] = cache_insert_id(connectionID);
	ActorInfo[id][acExists] = 1;
    ActorInfo[id][acPosX] = x;
    ActorInfo[id][acPosY] = y;
    ActorInfo[id][acPosZ] = z;
    ActorInfo[id][acPosA] = a;
    ActorInfo[id][acSkin] = skin;
    ActorInfo[id][acWorld] = world;
	ActorInfo[id][acTextID] = Text3D:INVALID_3DTEXT_ID;

	ReloadActors(id);
	SAM(COLOR_LIGHTRED, "AdmCmd: %s %s has created Actor at %s.", GetStaffRank(playerid), GetRPName(playerid), GetZoneName(x, y, z));
	SCMf(playerid, COLOR_GREEN, "** Actor [%i] created at %.1f, %.1f, %.1f.", id, x, y, z);
}

CMD:createActor(playerid, params[])
{
    new skin, label[64];
    new Float:x, Float:y, Float:z, Float:a;
    if(pData[playerid][pAdmin] < 7)
    {
        return SendClientMessage(playerid, COLOR_SYNTAX, "You are not authorized to use this command as you're not a Community Manager");
    }
    if(sscanf(params, "is[64]", skin, label))
    {
        return SendClientMessage(playerid, COLOR_SYNTAX, "Usage: /createactor [model skin] [label]");
    }
    if(strlen(label) > 64)
    {
        return SendClientMessage(playerid, COLOR_SYNTAX, "Label's length must be 1-64 only!");
    }
    if(skin < 0 || skin > 311)
    {
        return SendClientMessage(playerid, COLOR_SYNTAX, "Invalid Skin. Skin ID ranges from 0-311 only!");
    }

    GetPlayerPos(playerid, x, y, z);
    GetPlayerFacingAngle(playerid, a);
    new vw = GetPlayerVirtualWorld(playerid);

    for(new i = 0; i < MAX_DYNAMICACTORS; i ++)
	{
        if(!ActorInfo[i][acExists])
        {
            mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "INSERT INTO actors (label, skin, world, x, y, z, a) VALUES('%s', '%i', '%i', '%f', '%f', '%f', '%f')", label, skin, vw, x, y, z, a);
		    mysql_tquery(connectionID, queryBuffer, "OnAdminCreateDynamicActor", "iiisiffff", playerid, i, skin, label, vw, x, y, z, a);
		    return 1;
        }
    }
    return 1;
}

CMD:gotoactor(playerid, params[])
{
    new actorid;
    if(pData[playerid][pAdmin] < 4)
    {
        return SendClientMessage(playerid, COLOR_SYNTAX, "You are not authorized to use this command as you're not a Senior Admin.");
    }
    if(sscanf(params, "i", actorid))
    {
        return SendClientMessage(playerid, COLOR_SYNTAX, "Usage: /gotoactor [actor id]");
    }
    if(!(0 <= actorid < MAX_DYNAMICACTORS) || !ActorInfo[actorid][acExists])
    {
        return SendClientMessage(playerid, COLOR_SYNTAX, "Invalid Actor ID.");
    }

    SetPlayerPos(playerid, ActorInfo[actorid][acPosX], ActorInfo[actorid][acPosY], ActorInfo[actorid][acPosZ]);
    SetPlayerFacingAngle(playerid, ActorInfo[actorid][acPosA]);
    SetCameraBehindPlayer(playerid);
    return 1;
}

CMD:editactor(playerid, params[])
{
    new actorid, options[10], param[128];
    if(pData[playerid][pAdmin] < 4)
    {
        return SendClientMessage(playerid, COLOR_SYNTAX, "You are not authorized to use this command as you're not a Senior Admin.");
    }
    if(sscanf(params, "is[10]S()[128]", actorid, options, param))
    {
        SendClientMessage(playerid, COLOR_SYNTAX, "Usage: /editactor [actor id] [option]");
        SendClientMessage(playerid, COLOR_WHITE, "Options: Label, Skin");
        return 1;
    }
    if(!strcmp(options, "label", true))
    {
        new string[128];
        if(isnull(param))
        {
            return SendClientMessage(playerid, COLOR_SYNTAX, "Usage: /editactor [actor id] label [name]");
        }
        if(strlen(param) > 64)
        {
            return SendClientMessage(playerid, COLOR_SYNTAX, "Label Text insist of 64 letters only!");
        }

        format(string, sizeof(string), "You have set actor ID %i's label to %s.", actorid, param);
        SendClientMessage(playerid, COLOR_AQUA, string);
        strcpy(ActorInfo[actorid][acLabel], param, 64);
        mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE actors SET label = %s WHERE id = %i", ActorInfo[actorid][acLabel], ActorInfo[actorid][acID]);
	    mysql_tquery(connectionID, queryBuffer);
        return 1;
    }
    else if(!strcmp(options, "skin", true))
    {
        new string[128], skinid;
        if(sscanf(param, "i", skinid))
        {
            return SendClientMessage(playerid, COLOR_SYNTAX, "Usage: /editactor [actor id] skin [skin id]");
        }
        if(skinid < 0 || skinid > 311)
        {
            return SendClientMessage(playerid, COLOR_SYNTAX, "Invalid Skin. Skin ID ranges from 0-311 only!");
        }

        format(string, sizeof(string), "You have set actor ID %i's skin to id %i.", actorid, params);
        SendClientMessage(playerid, COLOR_AQUA, string);
        ActorInfo[actorid][acSkin] = skinid;
        mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE actors SET skin = %i WHERE id = %i", ActorInfo[actorid][acSkin], ActorInfo[actorid][acID]);
	    mysql_tquery(connectionID, queryBuffer);
        return 1;
    }
    return 1;
}

CMD:removeactor(playerid, params[])
{
    new actorid;
    if(pData[playerid][pAdmin] < 8)
    {
        return SendClientMessage(playerid, COLOR_SYNTAX, "You are not authorized to use this command as you're not an Executive Director");
    }
    if(sscanf(params, "i", actorid))
    {
        return SendClientMessage(playerid, COLOR_SYNTAX, "Usage: /removeactor [actor id]");
    }
    if(!(0 <= actorid < MAX_DYNAMICACTORS) || !ActorInfo[actorid][acExists])
    {
        return SendClientMessage(playerid, COLOR_SYNTAX, "Invalid Actor ID.");
    }

    DestroyDynamic3DTextLabel(ActorInfo[actorid][acTextID]);
	DestroyActor(ActorInfo[actorid][acModel]);

	mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "DELETE FROM actors WHERE id = %i", ActorInfo[actorid][acID]);
	mysql_tquery(connectionID, queryBuffer);
	ActorInfo[actorid][acExists] = -1;
	ActorInfo[actorid][acID] = 0;
    return 1;
}

public OnGameModeInit()
{
    mysql_tquery(connectionID, "SELECT * FROM actors", "OnQueryFinished", "ii", THREAD_LOAD_ACTORS, 0);
    #if defined AC_OnGameModeInit
        return AC_OnGameModeInit();
    #else
        return 1;
    #endif
}
#if defined _ALS_OnGameModeInit
    #undef OnGameModeInit
#else
    #define _ALS_OnGameModeInit
#endif
#define OnGameModeInit AC_OnGameModeInit
#if defined AC_OnGameModeInit
    forward AC_OnGameModeInit();
#endif