#define MAX_CDVEHICLES           20

enum cdEnum
{
    bizID,
    vehID,
    vehExists,
    Float:vehPosX,
    Float:vehPosY,
    Float:vehPosZ,
    Float:vehPosA,
    Vehicle,
    vehModelID,
    vehModelName[64],
    vehPrice,
    Text3D:vehLabel
}
new DealershipInfo[MAX_CDVEHICLES][cdEnum];

ReloadDealerships(cdvehID)
{
    new labelstring[256];
    if(DealershipInfo[cdvehID][vehExists])
    {
        DestroyDynamic3DTextLabel(DealershipInfo[cdvehID][vehLabel]);
        DestroyVehicle(DealershipInfo[cdvehID][Vehicle]);

        DealershipInfo[cdvehID][Vehicle] = CreateVehicle(DealershipInfo[cdvehID][vehModelID], DealershipInfo[cdvehID][vehPosX], DealershipInfo[cdvehID][vehPosY], DealershipInfo[cdvehID][vehPosZ], DealershipInfo[cdvehID][vehPosA], 0, 0, 2);
        format(labelstring, sizeof(labelstring), "For Sale!\n\n[Vehicle Model]: {22F580}%s\n{EAC162}[Vehicle ID]: {FFFF00}%i\n{EAC162}[Price]: {338933}$%s\n\n{22F5EA}Type /buyveh to purchase", DealershipInfo[cdvehID][vehModelName], cdvehID, FormatNumber(DealershipInfo[cdvehID][vehPrice]));
        DealershipInfo[cdvehID][vehLabel] = CreateDynamic3DTextLabel(labelstring, 0xEAC162FF, DealershipInfo[cdvehID][vehPosX], DealershipInfo[cdvehID][vehPosY], DealershipInfo[cdvehID][vehPosZ]+0.5, 30.0, INVALID_PLAYER_ID, DealershipInfo[cdvehID][Vehicle]);
    }
}

GetNearbyCdVehicles(playerid)
{
    for(new i = 0; i < MAX_CDVEHICLES; i ++)
    {
        if(DealershipInfo[i][vehExists] && IsPlayerInRangeOfPoint(playerid, 4.0, DealershipInfo[i][vehPosX], DealershipInfo[i][vehPosY], DealershipInfo[i][vehPosZ]))
        {
            return i;
        }
        
    }
    return -1;
}

GetNearbyCdBusiness(playerid, Float:radius)
{
    for(new i = 0; i < MAX_BUSINESSES; i ++)
    {
        if(BusinessInfo[i][bExists] && IsPlayerInRangeOfPoint(playerid, radius, BusinessInfo[i][bPosX], BusinessInfo[i][bPosY], BusinessInfo[i][bPosZ]))
        {
            return i;
        }
    }

    return -1;
}

stock IsATrain(modelid) {
	switch(modelid) {
		case 538, 537, 590, 569, 570: return 1;
	}
	return 0;
}

forward CreateDealershipVehicles(playerid, bizid, cdvehID, cdvehModelID, modelname[], price, Float:x, Float:y, Float:z, Float:a);
public CreateDealershipVehicles(playerid, bizid, cdvehID, cdvehModelID, modelname[], price, Float:x, Float:y, Float:z, Float:a)
{
    DealershipInfo[cdvehID][vehID] = cache_insert_id(connectionID);
    DealershipInfo[cdvehID][vehExists] = 1;
    DealershipInfo[cdvehID][bizID] = bizid;

    DealershipInfo[cdvehID][vehPosX] = x;
    DealershipInfo[cdvehID][vehPosY] = y;
    DealershipInfo[cdvehID][vehPosZ] = z;
    DealershipInfo[cdvehID][vehPosA] = a;

    DealershipInfo[cdvehID][vehModelID] = cdvehModelID;
    format(DealershipInfo[cdvehID][vehModelName], 64, modelname);
    DealershipInfo[cdvehID][vehPrice] = price;
    DealershipInfo[cdvehID][vehLabel] = Text3D:INVALID_3DTEXT_ID;
    ReloadDealerships(cdvehID);

    // Admin log
    SAM(COLOR_LIGHTRED, "[AdmLog]: "WHITE"%s %s has created a dealership vehicle(%s) at %s.", GetAdminRank(playerid), GetRPName(playerid), modelname, GetZoneName(x, y, z));
}

forward LoadDealershipVehicles();
public LoadDealershipVehicles()
{
    new rows = cache_get_row_count(connectionID);
    for(new i = 0; i < rows && i < MAX_CDVEHICLES; i ++)
    {
        DealershipInfo[i][vehID] = cache_get_field_content_int(i, "id");
        DealershipInfo[i][bizID] = cache_get_field_content_int(i, "bizid");
        DealershipInfo[i][vehExists] = 1;

        DealershipInfo[i][vehPosX] = cache_get_field_content_float(i, "posx");
        DealershipInfo[i][vehPosY] = cache_get_field_content_float(i, "posy");
        DealershipInfo[i][vehPosZ] = cache_get_field_content_float(i, "posz");
        DealershipInfo[i][vehPosA] = cache_get_field_content_float(i, "posa");

        DealershipInfo[i][vehModelID] = cache_get_field_content_int(i, "modelid");
        DealershipInfo[i][vehPrice] = cache_get_field_content_int(i, "price");
        cache_get_field_content(i, "modelname", DealershipInfo[i][vehModelName], connectionID, 64);

        DealershipInfo[i][vehLabel] = Text3D:INVALID_3DTEXT_ID;
        ReloadDealerships(i);
    }
    printf("[Dealership Vehicles]: %i Loaded", rows);
}

CMD:createdsv(playerid, params[]) return callcmd::createdealershipvehicle(playerid, params);
CMD:createdealershipvehicle(playerid, params[])
{
    new bizid, modelid, price;
    new Float:x, Float:y, Float:z, Float:a;
    if(pData[playerid][pAdmin] < 8)
    {
        return SendMessageFormatted(playerid, "ERROR", "You are not authorized to use this command.");
    }
    if(sscanf(params, "iii", bizid, modelid, price))
    {
        return SendMessageFormatted(playerid, "USAGE", "/create(d)ealer(s)hip(v)ehicle [biz id] [modelid/name] [price]");
    }
    if(!(0 <= bizid < MAX_BUSINESSES) || !BusinessInfo[bizid][bExists])
    {
        return SendMessageFormatted(playerid, "INVALID", "Biz ID %i is not valid. Please double check your id.", bizid);
    }
    else if(!(400 <= modelid <= 611))
    {
        return SendMessageFormatted(playerid, "ERROR", "Vehicle Model ID %i is not a valid vehicle. It starts on 400 and ends on 611.", modelid);
    }
    if(IsATrain(modelid))
    {
        return SendMessageFormatted(playerid, "ERROR", "That Vehicle is a Train. You cannot use that.");
    }
    if(BusinessInfo[bizid][bType] != BUSINESS_DEALERSHIP)
    {
        return SendMessageFormatted(playerid, "ERROR", "You've been submitting a non-dealership Business ID. Please set your biz id as a dealership before assigning a vehicle to them.");
    }

    GetPlayerPos(playerid, x, y, z);
    GetPlayerFacingAngle(playerid, a);

    for(new i = 0; i < MAX_CDVEHICLES; i++)
    {
        if(!DealershipInfo[i][vehExists])
        {
            mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "INSERT INTO dealerships(modelid, modelname, bizid, price, posx, posy, posz, posa) VALUES(%i, '%e', %i, %i, %f, %f, %f, %f)", modelid, vehicleNames[modelid - 400], bizid, price, x, y, z, a);
            mysql_tquery(connectionID, queryBuffer, "CreateDealershipVehicles", "iiiisiffff", playerid, bizid, i, modelid, vehicleNames[modelid - 400], price, x, y, z, a);
            return 1;
        }
    }
    return 1;
}

CMD:buyveh(playerid, params[])
{
    new vehid = GetNearbyCdVehicles(playerid);
    if(GetNearbyCdVehicles(playerid) == -1)
    {
        return SendMessageFormatted(playerid, "ERROR", "You must enter a vehicle in order for you to purchase.");
    }

    new string[500];
    SetPVarInt(playerid, "Carprice", DealershipInfo[vehid][vehPrice]);
    SetPVarInt(playerid, "Carmodel", DealershipInfo[vehid][vehModelID]);
    format(string, sizeof(string), "Hello, %s. Since you're sitting on a dealership vehicle, we might thought your buying. Please press 'Yes' too confirm and press 'No' to decline.\n\
            Would you like to buy %s for %s?", GetRPName(playerid), DealershipInfo[vehid][vehModelName], FormatNumber(DealershipInfo[vehid][vehPrice]));
    ShowPlayerDialog(playerid, DIALOG_CARBUY, DIALOG_STYLE_MSGBOX, "Car Dealership", string, "Yes", "No");
    return 1;
}