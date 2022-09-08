new bool:IsPlayerCoroner[MAX_PLAYERS];

CMD:getduty(playerid, params[]){

    if(!IsPlayerCoroner[playerid]) {
        IsPlayerCoroner[playerid] = true;
        return SendClientMessage(playerid, COLOR_AQUA, "You have toggled your shift. You are now on-duty.");
    }
    else {
        IsPlayerCoroner[playerid] = false;
        return SendClientMessage(playerid, COLOR_AQUA, "You have toggled your shift. You are now off-duty.");
    }
    return 1;
}