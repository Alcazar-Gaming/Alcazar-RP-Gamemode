#define MAX_GASOLINES           50
//#define MAX_GAS                 2000

enum gsEnum
{
    gsID,
    gsExists,
    Float:gsPosX,
    Float:gsPosY,
    Float:gsPosZ,
    Float:gsPosA,
    gsPickup,
    gsContents,
    gsPrice,
    Text3D:gsLabel
}
new GasolineInfo[MAX_GASOLINES][gsEnum];
new GasCap[MAX_PLAYERS];

ReloadGasoline(gasid)
{
    new string[500];
    if(GasolineInfo[gasid][gsExists])
    {
        DestroyDynamicPickup(GasolineInfo[gasid][gsPickup]);
        DestroyDynamic3DTextLabel(GasolineInfo[gasid][gsLabel]);

        GasolineInfo[gasid][gsPickup] = CreateDynamicObject(1676, GasolineInfo[gasid][gsPosX], GasolineInfo[gasid][gsPosY], GasolineInfo[gasid][gsPosZ], 0.0, 0.0, GasolineInfo[gasid][gsPosA]);
        format(string, sizeof(string), "Gasoline Point\n"GREY"Gas ID: %i{F5DEB3}\n\nCapacity: %i\nPrice: "GREEN"$50", gasid, GasolineInfo[gasid][gsContents]);
        GasolineInfo[gasid][gsLabel] = CreateDynamic3DTextLabel(string, 0xF5DEB3FF, GasolineInfo[gasid][gsPosX], GasolineInfo[gasid][gsPosY], GasolineInfo[gasid][gsPosZ]+0.5, 30.0);
        SaveContents(gasid);
    }
}

GetNearbyGas(playerid)
{
    for(new i = 0; i < MAX_GASOLINES; i ++)
    {
        if(GasolineInfo[i][gsExists] && IsPlayerInRangeOfPoint(playerid, 8.0, GasolineInfo[i][gsPosX], GasolineInfo[i][gsPosY], GasolineInfo[i][gsPosZ]))
        {
            return i;
        }
        
    }
    return -1;
}

SaveContents(gasid)
{
    mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE gasolines SET contents = %i WHERE ID = %i", GasolineInfo[gasid][gsContents], GasolineInfo[gasid][gsID]);
    mysql_tquery(connectionID, queryBuffer);
}

forward CreateGasoline(playerid, id, Float:x, Float:y, Float:z, Float:a);
public CreateGasoline(playerid, id, Float:x, Float:y, Float:z, Float:a)
{
    GasolineInfo[id][gsID] = cache_insert_id(connectionID);
    GasolineInfo[id][gsExists] = 1;

    GasolineInfo[id][gsPosX] = x;
    GasolineInfo[id][gsPosY] = y;
    GasolineInfo[id][gsPosZ] = z;
    GasolineInfo[id][gsPosA] = a;
    
    GasolineInfo[id][gsContents] = 2000;
    GasolineInfo[id][gsPickup] = -1;
    GasolineInfo[id][gsLabel] = Text3D:INVALID_3DTEXT_ID;
    ReloadGasoline(id);

    // Admin log
    SAM(COLOR_LIGHTRED, "[AdmCmd]: "WHITE"%s %s has created a Gasoline Point at %s.", GetAdminRank(playerid), GetRPName(playerid), GetZoneName(x, y, z));
}

forward LoadGasoline();
public LoadGasoline()
{
    new rows = cache_get_row_count(connectionID);
    for(new i = 0; i < rows && i < MAX_GASOLINES; i++)
    {
        GasolineInfo[i][gsID] = cache_get_field_content_int(i, "ID");
        GasolineInfo[i][gsExists] = 1;

        GasolineInfo[i][gsPosX] = cache_get_field_content_float(i, "posX");
        GasolineInfo[i][gsPosY] = cache_get_field_content_float(i, "posY");
        GasolineInfo[i][gsPosZ] = cache_get_field_content_float(i, "posZ");
        GasolineInfo[i][gsPosA] = cache_get_field_content_float(i, "posA");
        
        GasolineInfo[i][gsContents] = cache_get_field_content_int(i, "contents");
        ReloadGasoline(i);
    }
    printf("[Gasolines]: %i Loaded", rows);
}

// Commands
COMMAND:creategas(playerid, params[])
{
    new Float:x, Float:y, Float:z, Float:a;
    if(pData[playerid][pAdmin] < 8)
    {
        return SCM(playerid, COLOR_GREY, "You are not authorized to use this command.");
    }
    if(sscanf(params, "s[32]", "confirm"))
    {
        return SCM(playerid, COLOR_GREY, "[USAGE]: "WHITE"/creategas [confirm]");
    }

    GetPlayerPos(playerid, x, y, z);
    GetPlayerFacingAngle(playerid, a);

    for(new i = 0; i < MAX_GASOLINES; i ++)
    {
        if(!GasolineInfo[i][gsExists])
        {
            mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "INSERT INTO gasolines(posX, posY, posZ, posA) VALUES(%f, %f, %f, %f)", x, y, z, a);
            mysql_tquery(connectionID, queryBuffer, "CreateGasoline", "iiffff", playerid, i, x, y, z, a);
            return 1;
        }
    }
    return 1;
}

CMD:editgas(playerid, params[])
{
    return 1;
}