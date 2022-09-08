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
/											    Alcazar 
/                      	   		____ ______    ____ ___  _    ____ _   _
/				                 |__/ |  | |    |___ |__] |    |__|  \_/
/				                 |  \ |__| |___ |___ |    |___ |  |   |
/
/
/                                 Pawn File: Tailor Job Script
/                                 Module Folder: jobs
/
/                               Module Created by:
/	                        		Stewart - Stewart#8221 - Alcazar City Roleplay
/									
/								
/									Tailor Job System Script Created By Stewart
/                                                   WITH STEPS!!!
/
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
*/

//--------------------------------[Variables]--------------------------------//
new burrito;
new bool: gOnCheck[MAX_PLAYERS];
new bool: gWoolCheck[MAX_PLAYERS];
new tailorcp[MAX_PLAYERS];
new wooltimer;



//--------------------------------[STEPS]--------------------------------//

// 1ST STEP: They need to join Tailor job. Or else, the system will warning them
// Joining Tailor job is on the main pawn file

// 2ND STEP:
CMD:getbox(playerid, params[])
{
    if(pData[playerid][pJob] == JOB_TAILOR)
    {
        RandomBurritoSpawn(playerid);
    }
    else
    {
        SendClientMessage(playerid, COLOR_SYNTAX, "You're not on a tailor job.");
    }
    return 1;
}

// 3RD STEP: Burrito spawning time!

RandomBurritoSpawn(playerid)
{
    switch(random(6))
    {
        case 0:
        {
            burrito = CreateVehicle(482, 1009.7880, -1459.1869, 13.5469, 0.3946, 1, 0, -1);
            SetPlayerCheckpoint(playerid, 1009.7880, -1459.1869, 13.5469, 3.0);
        }
        case 1:
        {
            burrito = CreateVehicle(482, 1006.1345, -1459.3722, 13.5469, 0.7015, 1, 0, -1);
            SetPlayerCheckpoint(playerid, 1006.1345, -1459.3722, 13.5469, 3.0);
        }
        case 2:
        {
            burrito = CreateVehicle(482, 1002.0801, -1459.6046, 13.5469, 0.9039, 1, 0, -1);
            SetPlayerCheckpoint(playerid, 1002.0801, -1459.6046, 13.5469, 3.0);
        }
        case 3:
        {
            burrito = CreateVehicle(482, 998.3618, -1459.4666, 13.5469, 1.7437, 1, 0, -1);
            SetPlayerCheckpoint(playerid, 998.3618, -1459.4666, 13.5469, 3.0);
        }
        case 4:
        {
            burrito = CreateVehicle(482, 994.7505, -1459.3197, 13.5469, 359.3951, 1, 0, -1);
            SetPlayerCheckpoint(playerid, 994.7505, -1459.3197, 13.5469, 3.0);
        }  
        case 5:
        {
            burrito = CreateVehicle(482, 981.9437, -1435.4713, 13.5469, 180.2115, 1, 0, -1);
            SetPlayerCheckpoint(playerid, 981.9437, -1435.4713, 13.5469, 3.0);
        }
    }
    SendMessage(playerid, COLOR_AQUA, "Hello %s, to deliver, please proceed to your burrito. (Marked on your map)", GetRPName(playerid));
    gOnCheck[playerid] = true;
}

// 4TH STEP: STACKING WOOOOOOL!!!

// 5TH STEP: PUTTING TO THE VEHICLE BOOT

GetVehicleBoot(vehicleid, &Float:x, &Float:y, &Float:z)
{
    if(IsValidVehicle(vehicleid))
    {
        new
            Float:pos[7];

        GetVehicleModelInfo(GetVehicleModel(vehicleid), VEHICLE_MODEL_INFO_SIZE, pos[0], pos[1], pos[2]);
        GetVehiclePos(vehicleid, pos[3], pos[4], pos[5]);
        GetVehicleZAngle(vehicleid, pos[6]);

        x = pos[3] - (floatsqroot(pos[1] + pos[1]) * floatsin(-pos[6], degrees));
        y = pos[4] - (floatsqroot(pos[1] + pos[1]) * floatcos(-pos[6], degrees));
        z = pos[5];
        return 1;
    }

    x = 0.0;
    y = 0.0;
    z = 0.0;

    return 0;
}

CheckpointBurritoBoot(playerid)
{
    new Float:pos[3];
    new vehicleid = GetPlayerVehicleID(playerid);
    GetVehicleBoot(vehicleid, pos[0], pos[1], pos[2]);

    SetPlayerCheckpoint(playerid, pos[0], pos[1], pos[2], 4.0);
    tailorcp[playerid] = 2;
}

//  6TH STEP: DELIVERING THE WOOLS!!

forward DeliverWool(playerid);
public DeliverWool(playerid)
{
    TogglePlayerControllable(playerid, 1);
    SendClientMessage(playerid, COLOR_YELLOW, "Deliver the wools to the delivery station points. (Marked on your map radar)");
    SetPlayerCheckpoint(playerid, -297.8975, 1089.9200, 19.8767, 3.0);
    tailorcp[playerid] = 3;
}

// 7TH STEP: RETURNING THE VEHICLE
// Line: 193

// 8TH STEP: RECIEVING YOUR PAYCHECK //
// Line: 199

// DONE //



//--------------------------------[STATIC CALLBACKS]--------------------------------//

public OnPlayerEnterCheckpoint(playerid)
{
    if(gOnCheck[playerid]) // if it's true // Checkpoint Burrito
    {
        DisablePlayerCheckpoint(playerid);
        gOnCheck[playerid] = false;
        gWoolCheck[playerid] = true;
    }
    switch(tailorcp[playerid])
    {
        case 1:
        {
            wooltimer = SetTimer("WoolTimer", 800, true);
            CheckpointBurritoBoot(playerid);
        }
        case 2: // Storing the wool to the burrito
        {
            DisablePlayerCheckpoint(playerid);
            SetTimerEx("DeliverWool", 3000, false, "i", playerid);
            TogglePlayerControllable(playerid, 0);
        }
        case 3: // Delivered it to Fort Carson(based to the coordinates). Returning the vehicle now.
        {
            SendClientMessage(playerid, COLOR_YELLOW, "Now, return the vehicle to where you get'em.");
            SetPlayerCheckpoint(playerid, 1031.5938, -1442.6237, 13.5546, 3.0);
            tailorcp[playerid] = 4;
        }
        case 4: // Returning the vehicle to the job loc
        {
            DestroyVehicle(burrito);
            new string[128];
            new payment = 750 + random(300);
            if(DoubleSalary)
            {
                new double_pay = payment * Salary;
                format(string, sizeof(string), "[DOUBLE-SALARY] You earned $%s instead of $%s since the Double Salary is turned on.", number_format(double_pay), number_format(payment));
                SendClientMessageEx(playerid, COLOR_YELLOW, string);
                AddToPaycheck(playerid, double_pay);
            }
            else
            {
                AddToPaycheck(playerid, payment);
            }
        }
    }
    #if defined TJ_OnPlayerEnterCheckpoint
        return TJ_OnPlayerEnterCheckpoint(playerid);
    #else
        return 1;
    #endif
}
#if defined _ALS_OnPlayerEnterCheckpoint
    #undef OnPlayerEnterCheckpoint
#else
    #define _ALS_OnPlayerEnterCheckpoint
#endif
#define OnPlayerEnterCheckpoint TJ_OnPlayerEnterCheckpoint
#if defined TJ_OnPlayerEnterCheckpoint
    forward TJ_OnPlayerEnterCheckpoint(playerid);
#endif

public OnPlayerLeaveCheckpoint(playerid)
{
    if(gWoolCheck[playerid])
    {
        KillTimer(wooltimer);
    }
    #if defined TJ_OnPlayerLeaveCheckpoint
        return TJ_OnPlayerLeaveCheckpoint(playerid);
    #else
        return 1;
    #endif
}
#if defined _ALS_OnPlayerLeaveCheckpoint
    #undef OnPlayerLeaveCheckpoint
#else
    #define _ALS_OnPlayerLeaveCheckpoint
#endif
#define OnPlayerLeaveCheckpoint TJ_OnPlayerLeaveCheckpoint
#if defined TJ_OnPlayerLeaveCheckpoint
    forward TJ_OnPlayerLeaveCheckpoint(playerid);
#endif

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
    if(gWoolCheck[playerid])
    {
        if(ispassenger)
        {
            return 1;
        }
        else
        SetPlayerCheckpoint(playerid, -1506.5529, 1977.1954, 48.4171, 5.0);
        tailorcp[playerid] = 1;
        SendClientMessage(playerid, 0xFFFFFFFF, "Please proceed to the Stack Location. "RED"(Marked on your map radar)");
    }
    #if defined TJ_OnPlayerEnterVehicle
        return TJ_OnPlayerEnterVehicle(playerid, vehicleid, ispassenger);
    #else
        return 1;
    #endif
}
#if defined _ALS_OnPlayerEnterVehicle
    #undef OnPlayerEnterVehicle
#else
    #define _ALS_OnPlayerEnterVehicle
#endif
#define OnPlayerEnterVehicle TJ_OnPlayerEnterVehicle
#if defined TJ_OnPlayerEnterVehicle
    forward TJ_OnPlayerEnterVehicle(playerid, vehicleid, ispassenger);
#endif

public OnGameModeInit()
{
    SetTimer("WoolTimer", 800, true);
    #if defined TJ_OnGameModeInit
        return TJ_OnGameModeInit();
    #else
        return 1;
    #endif
}
#if defined _ALS_OnGameModeInit
    #undef OnGameModeInit
#else
    #define _ALS_OnGameModeInit
#endif
#define OnGameModeInit TJ_OnGameModeInit
#if defined TJ_OnGameModeInit
    forward TJ_OnGameModeInit();
#endif

forward WoolTimer(playerid);
public WoolTimer(playerid)
{
    foreach(new i : Player)
    {
        if(pData[i][pLogged])
        {
            if(gWoolCheck[i])
            {
                if(IsPlayerInCheckpoint(i))
                {
                    if(pData[i][pWool] < 100)
                    {
                        pData[i][pWool]++;
                    }
                    else if(pData[i][pWool] == 100)
                    {
                        KillTimer(wooltimer);
                        DisablePlayerCheckpoint(i);
                        SendClientMessage(playerid, COLOR_AQUA, "Please proceed to your vehicle boot.");
                    }
                }
            }
        }
    }
}