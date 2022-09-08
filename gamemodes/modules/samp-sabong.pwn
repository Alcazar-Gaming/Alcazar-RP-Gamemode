enum sbEnum
{
    sbBlue,
    sbRed,
    sbBidBlue,
    sbBidRed,
    sbWinner,
    Float:sbBluePos,
    Float:sbRedPos,
    sbPrice,
    sbStarted,
    sbClosed,
    sbEmergency
}
new SabongInfo[sbEnum];

stock GetBiddedFor(playerid)
{
    new string[20];
    switch(pData[playerid][pBiddedFor])
    {
        case 1:
        {
            string = "{FF0000}Red";
        }
        case 2:
        {
            string = "{233EFA}Blue";
        }
    }
}

SetSabong(blueid, redid)
{
    SabongInfo[sbRed] = redid;
    SabongInfo[sbBlue] = blueid;
    SetPlayerPos(blueid, 768.7865,-66.3131,1001.5692);
    SetPlayerFacingAngle(blueid, 135.7994);
    SetPlayerPos(redid, 764.6178,-70.8200,1001.5692);
    SetPlayerFacingAngle(redid, 316.2810);
    TogglePlayerControllable(blueid, false);
    TogglePlayerControllable(redid, false);
    SabongInfo[sbClosed] = 0;

    SMA(COLOR_LIGHTAQUA, "A sabong event has been conducted. Please head directly to our Sabong Gymnasium and place your bet.");
}

BiddingSabong(playerid, player[], bid)
{
    pData[playerid][pBidded] = 1;
    if(!strcmp(player, "red", true))
    {
        pData[playerid][pBiddedFor] = 1;
        pData[playerid][pBid] = bid;
        SabongInfo[sbBidRed] += bid;
        SM(playerid, COLOR_LIGHTAQUA, "You have picked {FF0000}Red{33CCFF} for "GREEN"$%s", FormatNumber(bid));
    }
    else if(!strcmp(player, "blue", true))
    {
        pData[playerid][pBiddedFor] = 2;
        pData[playerid][pBid] = bid;
        SabongInfo[sbBidBlue] += bid;
        SM(playerid, COLOR_LIGHTAQUA, "You have picked {233EFA}Blue{33CCFF} for "GREEN"$%s", FormatNumber(bid));
    }
}

StartSabong()
{
    SabongInfo[sbStarted] = 1;
    TogglePlayerControllable(SabongInfo[sbBlue], true);
    TogglePlayerControllable(SabongInfo[sbRed], true);
}

DesiciveSabong(playerid, killerid)
{
    if(killerid == SabongInfo[sbBlue])
    {
        SabongInfo[sbWinner] = SabongInfo[sbBlue];
        EndSabong(SabongInfo[sbBlue]);
        SCM(playerid, COLOR_LIGHTAQUA, "And the winner is... {233EFA}Blue{33CCFF}!");
    }
    if(killerid == SabongInfo[sbRed])
    {
        SabongInfo[sbWinner] = SabongInfo[sbRed];
        EndSabong(SabongInfo[sbRed]);
        SCM(playerid, COLOR_LIGHTAQUA, "And the winner is... {FF0000}Red{33CCFF}!");
    }
}

EndSabong(winnerid)
{
    new countred, countblue, redPayout, bluePayout;
    for(new i = 0; i < MAX_PLAYERS; i ++)
    {
        if(winnerid == SabongInfo[sbRed])
        {
            if(pData[i][pBiddedFor] == 1)// If Red
            {
                countred++;
                redPayout = SabongInfo[sbBidRed] / countred;
                GivePlayerCash(i, redPayout);
                SetPlayerToSpawn(SabongInfo[sbRed]);
                SetPlayerToSpawn(SabongInfo[sbBlue]);
            }
        }
        if(winnerid == SabongInfo[sbBlue])
        {
            if(pData[i][pBiddedFor] == 2)// if Blue
            {
                countblue++;
                bluePayout = SabongInfo[sbBidBlue] / countblue;
                GivePlayerCash(i, bluePayout);
                SetPlayerToSpawn(SabongInfo[sbRed]);
                SetPlayerToSpawn(SabongInfo[sbBlue]);
            }
        }
        if(SabongInfo[sbEmergency] == 1)
        {
            GivePlayerCash(i, pData[i][pBid]);
            SetPlayerToSpawn(SabongInfo[sbRed]);
            SetPlayerToSpawn(SabongInfo[sbBlue]);
        }
        pData[i][pBidded] = 0;
        pData[i][pBiddedFor] = 0;
        pData[i][pBid] = 0;
        SabongInfo[sbRed] = 0;
        SabongInfo[sbBlue] = 0;
        SabongInfo[sbBidRed] = 0;
        SabongInfo[sbBidBlue] = 0;
    }
}

COMMAND:bet(playerid, params[])
{
    new bid, team[20];
    if(SabongInfo[sbStarted] != 1)
    {
        return SCM(playerid, COLOR_GREY, "[SABONG-ERROR]: "WHITE"There hasn't been any sabong event conducted.");
    }
    if(SabongInfo[sbClosed] != 1)
    {
        return SCM(playerid, COLOR_GREY, "[SABONG-ERROR]: "WHITE"Sabong event is currently closed.");
    }
    if(pData[playerid][pBidded] == 1)
    {
        return SCM(playerid, COLOR_GREY, "[SABONG-ERROR]: "WHITE"You've already voted. This system has been tighten and secured for spamming bet.");
    }
    if(sscanf(params, "s[20]i", team, bid))
    {
        SCM(playerid, COLOR_YELLOW, "[SABONG]: "WHITE"Welcome to Sabong System. In order to bid, please put your team choice including the amount of money you want to bet.");
        SCM(playerid, COLOR_GREY, "[USAGE]: "WHITE"/bet [Red/Blue] [amount]");
        return 1;
    }
//    if((!strcmp(team, "red", true)) != 1 || (!strcmp(team, "blue", true)) != 1) return SM(playerid, COLOR_GREY, "[SABONG-ERROR]: "WHITE"Sorry, but %s's not existing.", team);

    BiddingSabong(playerid, team, bid);
    return 1;
}

// Admin Commands
COMMAND:setsabong(playerid, params[])
{
    new red, blue;
    if(pData[playerid][pAdmin] < 8)
    {
        return SCM(playerid, COLOR_SYNTAX, "You are not authorized to use this command.");
    }
    if(sscanf(params, "ii", red, blue))
    {
        SCM(playerid, COLOR_YELLOW, "[SABONG]: "WHITE"Welcome to Sabong System. Please put the 2 people to fight with.");
        SCM(playerid, COLOR_GREY, "[USAGE]: "WHITE"/setsabong [Player ID Red] [Player ID Blue]");
        return 1;
    }
    if(!IsPlayerConnected(red))
    {
        return SCM(playerid, COLOR_GREY, "[SABONG-ERROR]: "WHITE"Player Red is not ingame.");
    }
    if(!IsPlayerConnected(blue))
    {
        return SCM(playerid, COLOR_GREY, "[SABONG-ERROR]: "WHITE"Player Blue is not ingame.");
    }

    new Float:x, Float:y, Float:z, Float:a;
    GetPlayerPos(blue, x, y, z);
    GetPlayerFacingAngle(blue, a);
    GetPlayerPos(red, x, y, z);
    GetPlayerFacingAngle(red, a);
    SavePlayerVariables(red);
    SavePlayerVariables(blue);
    SetSabong(blue, red);
    return 1;
}

COMMAND:startsabong(playerid, params[])
{
    if(pData[playerid][pAdmin] < 8)
    {
        return SCM(playerid, COLOR_SYNTAX, "You are not authorized to use this command.");
    }

    StartSabong();
    return 1;
}