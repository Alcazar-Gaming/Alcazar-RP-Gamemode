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
/                                 Pawn File: Shipment Contractor System
/                                 Module Folder: shipment_contractor
/
/                               Module Created by:
/	                        		Stewart - Stewart#8221 - Alcazar City Roleplay
/
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
*/

new shipment[MAX_PLAYERS];
new shipmentavailable;

public OnGameModeInit()
{
    mysql_tquery(connectionID, "SELECT * FROM pumps", "OnQueryFinished", "ii", THREAD_LOAD_PUMPS, 0);

    CreateDynamic3DTextLabel(""SVRCLR"Shipment Menu\n"WHITE"You may view our available shipment for today\n\
    "WHITE"Type "YELLOW"'/(a)vailable(s)hipment'"WHITE" to view catalog.", COLOR_WHITE, 2214.7314,-2658.1184,13.5469, 10.0);
	CreateDynamicPickup(19132, 1, 2214.7314,-2658.1184,13.5469);
    #if defined SC_OnGameModeInit
        return SC_OnGameModeInit();
    #else
        return 1;
    #endif
}
#if defined _ALS_OnGameModeInit
    #undef OnGameModeInit
#else
    #define _ALS_OnGameModeInit
#endif
#define OnGameModeInit SC_OnGameModeInit
#if defined SC_OnGameModeInit
    forward SC_OnGameModeInit();
#endif

CMD:shipmentstatus(playerid, params[])
{
    new status;
    if(pData[playerid][pAdmin] < 7)
    {
        return SCM(playerid, COLOR_SYNTAX, "You are not authorized to use this command.");
    }
    if(sscanf(params, "i", status) || !(0 <= status <= 1))
    {
        return SCM(playerid, COLOR_SYNTAX, "Usage: /shipmentstatus [status (1/0)]");
    }

    if(status != 0)
    {
        SendClientMessage(playerid, COLOR_WHITE, "You have availed the shipment contractor job.");
    }
    else
    {
        SendClientMessage(playerid, COLOR_WHITE, "You have unavailed the shipment contractor job.");
    }
    shipmentavailable = status;
    return 1;
}

CMD:availableshipment(playerid, params[])
{
    new str[128];
    if(!PlayerHasJob(playerid, JOB_COURIER))
	{
	    return SCM(playerid, COLOR_SYNTAX, "You can't use this command as you are not a Trucker.");
	}
    if(GetVehicleModel(GetPlayerVehicleID(playerid)) != 514 && GetVehicleModel(GetPlayerVehicleID(playerid)) != 403 && GetVehicleModel(GetPlayerVehicleID(playerid)) != 515 && GetPlayerState(playerid) != PLAYER_STATE_DRIVER)
	{
	    return SCM(playerid, COLOR_SYNTAX, "You need to be driving a Tanker, Roadtrain, or a Linerunner.");
	}
    if(shipment[playerid] != 0)
    {
        return SCM(playerid, COLOR_SYNTAX, "You have an active shipment. Please finish it first before getting another shipment.");
    }

    format(str, sizeof(str), 
    "Gasoline\t%s", GetShipmentStatus());
    ShowPlayerDialog(playerid, DIALOG_SHIPMENTCONTRACT, DIALOG_STYLE_TABLIST, "Shipment Menu", str, "Confirm", "Cancel");
    return 1;
}

GetShipmentStatus()
{
    new string[20];
    if(shipmentavailable == 1)
    {
        string = ""GREEN"Available";
    }
    else if(shipmentavailable == 0)
    {
        string = ""RED"Unavailable";
    }
    return string;
}

forward TimerShipmentContract(playerid);
public TimerShipmentContract(playerid)
{
    new stage;
    switch(stage)
    {
        case 0:
        {
            GameTextForPlayer(playerid, "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~10 Seconds left", 1000, 3);
        }
        case 1:
        {
            GameTextForPlayer(playerid, "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~9 Seconds left", 1000, 3);
        }
        case 2:
        {
            GameTextForPlayer(playerid, "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~8 Seconds left", 1000, 3);
        }
        case 3:
        {
            GameTextForPlayer(playerid, "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~7 Seconds left", 1000, 3);
        }
        case 4:
        {
            GameTextForPlayer(playerid, "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~6 Seconds left", 1000, 3);
        }
        case 5:
        {
            GameTextForPlayer(playerid, "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~5 Seconds left", 1000, 3);
        }
        case 6:
        {
            GameTextForPlayer(playerid, "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~4 Seconds left", 1000, 3);
        }
        case 7:
        {
            GameTextForPlayer(playerid, "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~3 Seconds left", 1000, 3);
        }
        case 8:
        {
            GameTextForPlayer(playerid, "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~2 Seconds left", 1000, 3);
        }
        case 9:
        {
            GameTextForPlayer(playerid, "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~1 Second left", 1000, 3);
        }
        case 10:
        {
            GameTextForPlayer(playerid, "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~0 Second left", 1000, 3);
        }
    }
    stage++;
    if(stage != 10)
    {
        SetTimerEx("TimerShipmentContract", 1000, false, "i", playerid);
    }
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch(dialogid)
    {
        case DIALOG_SHIPMENTCONTRACT:
        {
            if(!response) return SetCameraBehindPlayer(playerid);
            else
            {
                for(new i = 0; i < MAX_PUMPS; i ++)
                {
                    new rand = random(i);

                    SetPlayerCheckpoint(playerid, PumpInfo[rand][PosX], PumpInfo[rand][PosY], PumpInfo[rand][PosZ], 8.0);
                    if(i == -1)
                    {
                        return SCM(playerid, COLOR_WHITE, "There are no Pump Station's setuped yet. Contact any administrator to setup one!");
                    }
                }
            }
        }
    }
    #if defined SC_OnDialogResponse
        return SC_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
    #else
        return 1;
    #endif
}

#if defined _ALS_OnDialogResponse
    #undef OnDialogResponse
#else
    #define _ALS_OnDialogResponse
#endif
#define OnDialogResponse SC_OnDialogResponse
#if defined SC_OnDialogResponse
    forward SC_OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]);
#endif

CMD:shipmenthelp(playerid, params[])
{
    if(pData[playerid][pAdmin] < 1)
    {
        SCM(playerid, COLOR_WHITE, "Shipment Commands: /availableshipment");
    }
    else
    {
        SCM(playerid, COLOR_WHITE, "Shipment Commands: /availableshpiment, /shipmentstatus");
    }
    return 1;
}