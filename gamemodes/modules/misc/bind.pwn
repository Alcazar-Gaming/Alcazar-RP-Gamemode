// Bind System - Stewart

//#define DEBUG

new sqlquery[1024];

/*enum playerbind
{
    uBind1[128],
    uBind2[128],
    uBind3[128],
    uBind4[128],
    uBind5[128]
}
new PlayerBind[MAX_PLAYERS][playerbind];*/
new PlayerBind[MAX_PLAYERS][5][128];

stock SetPlayerBind(playerid, bindslot, bind[])
{
    new string[400];
    
    format(PlayerBind[playerid][bindslot], 128, bind);
    format(sqlquery, sizeof(sqlquery), "UPDATE binds SET bind = '%s' WHERE name = '%s' AND bindslot = %i", bind, GetPlayerNameEx(playerid), bindslot=1);
    mysql_tquery(connectionID, sqlquery);
    
    format(string, sizeof(string), "You have changed your bind slot %i to %s.", bindslot, bind);
    SendClientMessage(playerid, 0xFFFFFFFF, string);
    print(PlayerBind[playerid][bindslot]);
}

forward LoadPlayerBinds();
public LoadPlayerBinds()
{
    for(new i = 0; i < cache_num_rows() && i < MAX_PLAYERS; i ++)
    {
        cache_get_field_content(i, "bind", PlayerBind[i][i - 1], connectionID, 128);
    }
}

stock OnPlayerUseBind(playerid, slot)
{
    new cmd[20], params[128];
    
    if(strfind(PlayerBind[playerid][slot], "/", false))
    {
        CallLocalFunction("OnPlayerText", "is", playerid, PlayerBind[playerid][slot]);
    }
    else if(strfind(PlayerBind[playerid][slot], "/", true))
    {
        #if defined DEBUG
            sscanf(PlayerBind[playerid][slot], "s[20]s[128]", cmd, params);
            strdel(cmd, 0, 0);
            callcmd::cmd(playerid, params);
            print(PlayerBind[playerid][slot]);
        #else
            sscanf(PlayerBind[playerid][slot], "s[20]s[128]", cmd, params);
            strdel(cmd, 0, 0);
            //CallLocalFunction("OnPlayerCommandReceived", "issi", playerid, cmd, params, 0);
            CallLocalFunction("OnPlayerCommandText", "is", playerid, PlayerBind[playerid][slot]);
            print(PlayerBind[playerid][slot]);
        #endif
    }
}

CMD:setbind(playerid, params[])
{
    new slot, param[148];
    if(sscanf(params, "is[148]", slot, param))
    {
        return SendClientMessage(playerid, 0xFFFF00FF, "USAGE: /setbind [slot] [text]");
    }
    
    SetPlayerBind(playerid, slot, param);
    return 1;
}

CMD:usebind(playerid, params[])
{
    new bindslot;
    if(sscanf(params, "i", bindslot))
    {
        return SendClientMessage(playerid, 0xFFFF00FF, "USAGE: /usebind [slot]");
    }
    
    OnPlayerUseBind(playerid, bindslot);
    return 1;
}