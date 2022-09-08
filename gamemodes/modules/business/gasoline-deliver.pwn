forward GasTimer(playerid, stage);
public GasTimer(playerid, stage)
{
    switch(stage)
    {
        case 0:
        {
            GameTextForPlayer(playerid, "5 Seconds left.", 1000, 3);
        }
        case 1:
        {
            GameTextForPlayer(playerid, "4 Seconds left.", 1000, 3);
        }
        case 2:
        {
            GameTextForPlayer(playerid, "3 Seconds left.", 1000, 3);
        }
        case 3:
        {
            GameTextForPlayer(playerid, "2 Seconds left.", 1000, 3);
        }
        case 4:
        {
            GameTextForPlayer(playerid, "1 Seconds left.", 1000, 3);
            SetTimerEx("ShowGasolineCheckPoints", 1000, false, "i", 0);
        }
        case 5:
        {
            //ShowGasolineCheckPoints(playerid);
        }
    }
    stage++;

    if(stage < 5)
    {
        SetTimerEx("GasTimer", 1000, false, "ii", playerid, stage);
    }
}

new GasVehicles[2];
new GasCheckpoint[MAX_PLAYERS];
new GasReturnCheckpoint[MAX_PLAYERS];

GasolineBoyVehicles()
{
    GasVehicles[0] = AddStaticVehicleEx(514, 2466.5349,-2079.6194,13.5469,180.1288, 0, 0, 2);
}

forward ShowGasolineCheckPoints(playerid);
public ShowGasolineCheckPoints(playerid)
{
    TeleportToCoords(playerid, 2505.3984,-2086.1497,13.5469,90.6856, 0, 0);

    new trailerid = CreateVehicle(584, 127.9999, 435.3113, 54.5504, 90.6856, 0, 0, 300);//AddStaticVehicleEx(584, 127.9999, 435.3113, 54.5504, 90.6856, 0, 0, 300);
    AttachTrailerToVehicle(trailerid, GasVehicles[0]);

    for(new i = 0; i < MAX_GASOLINES; i ++)
    {
        if(GasolineInfo[i][gsExists])
        {
            new string[500], titlestr[128], descstr[500];
            format(titlestr, sizeof(titlestr), "ID\tLocation\tCapacity");
            format(descstr, sizeof(descstr), "%s\n%i\t%s\t%i", descstr, i, GetZoneName(GasolineInfo[i][gsPosX], GasolineInfo[i][gsPosY], GasolineInfo[i][gsPosZ]), GasolineInfo[i][gsContents]);
            format(string, sizeof(string), "%s\n%s", titlestr, descstr);
            ShowPlayerDialog(playerid, DIALOG_GASLIST, DIALOG_STYLE_TABLIST_HEADERS, "Gasoline List", string, "Confirm", "Back");
        }
    }
}

SetGasolineCheckPoints(playerid, id)
{
    GasCheckpoint[playerid] = 1;
    SetPlayerCheckpoint(playerid, GasolineInfo[id][gsPosX], GasolineInfo[id][gsPosX], GasolineInfo[id][gsPosX], 5.0);
    SCM(playerid, COLOR_LIGHTAQUA, "Please follow the checkpoints marked on your radar.");
}

ReturnGasolineVehicle(playerid)
{
    CancelActiveCheckpoint(playerid);
    GasCheckpoint[playerid] = 0;
    GasReturnCheckpoint[playerid] = 1;
    new vehicleid = GetPlayerVehicleID(playerid);
    new trailerId = GetVehicleTrailer(vehicleid);
    DetachTrailerFromVehicle(trailerId);
    DestroyVehicle(trailerId);

    SetPlayerCheckpoint(playerid, 2496.9163,-2099.0146,13.5469, 5.0);
    SCM(playerid, COLOR_LIGHTAQUA, "Please return back the vehicle you've using on the trucker site.");
}

EndGasolineVehicle(playerid)
{
    GasCheckpoint[playerid] = 0;
    GasReturnCheckpoint[playerid] = 0;
    new vehicleid = GetPlayerVehicleID(playerid);
    new price = Random(1000, 4999);
    GivePlayerCash(playerid, price);

    SM(playerid, COLOR_LIGHTAQUA, "Thanks for your hardwork. Your payout money will be "ORANGE"$%i{33CCFF}.", price);
    ClearAnimations(playerid);
    CancelActiveCheckpoint(playerid);
    SetVehicleToRespawn(vehicleid);
}

CMD:showgaslist(playerid, params[])
{
    ShowGasolineCheckPoints(playerid);
    return 1;
}

GAS_Checkpoints(playerid)
{
    if(GasCheckpoint[playerid] == 1)
    {
        ReturnGasolineVehicle(playerid);
    }
    if(GasReturnCheckpoint[playerid] == 1)
    {
        EndGasolineVehicle(playerid);
    }
}