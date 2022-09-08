// Corpse - Damage
enum PLAYER_TEMP_ENUM
{
    pDamagesCount,
    pInjuredTime,
    pDialogList,
    Float:pInvulnerable,
    phelpplayer3dText,
    UsingCorpse,
	UsingBort
}
new pTemp[MAX_PLAYERS][PLAYER_TEMP_ENUM];

#define MAX_CORPS 50
enum cpInfo
{
	cUsed,
	cType,
	cName[MAX_PLAYER_NAME],
	cTime,
	Float:cX,
	Float:cY,
	Float:cZ,
	Text3D:cText,
	cVeh,
	cNote[170],
	cSkin,
	cBody
};
new CorpInfo[MAX_CORPS][cpInfo];

// OnDialogResponse
    // Corpse
	CorpseInfo,
	CorpseInfo2,
	
// After Beacon %s thing
                    CreateCorpse(playerid, PlayerInfo[playerid][pDeathReason]);
					foreach(new i : Player)
					{
					    if(GetFactionType(i) == FACTION_MEDIC)
					    {
					    	SendMessage(i, COLOR_DISPATCH, "%s has bleed out and ready to be buried.", GetRPName(playerid));
						}
					}

// OnPlayerEnterVehicle
Corpse_OnPlayerEnterVehicle(playerid);

// OnPlayerUpdate
Corpse_OnPlayerUpdate(playerid);

// OnPlayerKeyStateChange
// Corpse
	if(PRESSED(KEY_NO))
	{
		if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
		{
			if(GetNearestCorpse(playerid) != -1)	callcmd::corpse(playerid, "");
		}
	}
	
// OnPlayerEditDynamicObject
if(GetPVarInt(playerid, #CorpsEdit))
	{
		Corpse_OnPlayerEdit(playerid, objectid, response, x, y, z, rz);
	}
	
// OnDialogResponse
// Corpse
	if(dialogid == CorpseInfo)
	{
		if (!response)	return 1;

	    new dlg[90], i = GetNearestCorpse(playerid);

	    switch(CorpInfo[i][cType]) {
	        case 0: {//об����н��й = 0
	            dlg="Drag into vehicle\nPut in a bag\nBury Body";
	        }
	        case 1: { //ка��алка
	            dlg="Remove the corpse from the wheelchair";
	        }
	        case 2: { //ме��ок ��р��па
	            dlg="Drag into vehicle\nGet the corpse out of the bag";
	        }
	        case 3:{ //закопанн��й
	            dlg="Unearth a corpse";
	        }
	    }

	    if (!CorpInfo[i][cType] && PlayerInfo[playerid][pDuty] == 1 && (GetFactionType(playerid) == FACTION_MEDIC))
	        strcat(dlg,"\nPut on a gurney");

	    if (PlayerInfo[playerid][pAdmin] || (PlayerInfo[playerid][pDuty] == 1 && (GetFactionType(playerid) == FACTION_MEDIC)))
	        strcat(dlg,"\nRemove Body");

	    ShowPlayerDialog(playerid, CorpseInfo2, DIALOG_STYLE_LIST, "Dead body", dlg, "Select", "Return");
	    return 1;
	}
	if(dialogid == CorpseInfo2)
	{
		if (!response)	return callcmd::corpse(playerid, "");

	    if(PlayerInfo[playerid][pTazedTime] > 0 || PlayerInfo[playerid][pInjured] > 0 || PlayerInfo[playerid][pHospital] > 0 || PlayerInfo[playerid][pTied] > 0 || PlayerInfo[playerid][pCuffed] > 0 || PlayerInfo[playerid][pJailTime] > 0 || PlayerInfo[playerid][pJoinedEvent] > 0)
		{
		    return SendClientMessage(playerid, COLOR_SYNTAX, "You can't use this command at the moment.");
		}

	    if(!PlayerInfo[playerid][pLogged])
		{
		    return SendClientMessage(playerid, COLOR_GREY, "You are not logged in yet.");
		}

		new i = GetNearestCorpse(playerid);

	    switch(listitem) {
	        case 0: {
	            switch(CorpInfo[i][cType]) {
	                case 0: listitem=0;
	                case 1: listitem=1;
	                case 2: listitem=0;
	                case 3: listitem=2;
	            }
	        }
	        case 1: {
	            switch(CorpInfo[i][cType]) {
	                case 0: listitem=5;
	                case 1: listitem=7;
	                case 2: listitem=2;
	                case 3: listitem=7;
	            }
	        }
	        case 2: {
	            switch(CorpInfo[i][cType]) {
	                case 0: listitem=6;
	                case 2: listitem=7;
	            }
	        }
	        case 3: listitem=4;
	        case 4: listitem=7;
	    }

	    switch(listitem)
	    {
	        case 0:
	        {
	            new vehicle = GetNearbyVehicle(playerid);
	            if (vehicle == -1)                         return SendClientMessage(playerid, COLOR_GREY, "You are not near vehicle.");
	            if (!IsNearTrunk(vehicle, playerid, 2.0))  return SendClientMessage(playerid, COLOR_GREY, "You are not near the trunk! ");
	            new engine, lights, alarm, doors, bonnet, boot, objective;
		        GetVehicleParamsEx(vehicle, engine, lights, alarm, doors, bonnet, boot, objective);

		        if(boot == VEHICLE_PARAMS_OFF || boot == VEHICLE_PARAMS_UNSET)
		        {
		            SendClientMessage(playerid, COLOR_GREY, "The vehicle's trunk must be opened to load corpse.");
		            return 1;
		        }

	            if (VehicleInfo[vehicle][vCorp] > 0 && CorpInfo[VehicleInfo[vehicle][vCorp]][cUsed] == 1)
	                return SendClientMessage(playerid, COLOR_GREY, "There is already a corpse in the trunk!");

	            new mes[128];
	            format(mes, sizeof(mes), "drags a corpse %s in the trunk.", CorpInfo[i][cName]);
	            callcmd::me(playerid, mes);

	            SendClientMessage(playerid, COLOR_GREY, "You put your body in the trunk. (( /car corpse - to pull out ))");

	            CorpInfo[i][cTime] = gettime();
	            CorpInfo[i][cVeh]=vehicle;
	            VehicleInfo[vehicle][vCorp]=i+1;

	            CorpInfo[i][cX] =
	            CorpInfo[i][cY] =
	            CorpInfo[i][cZ] = 0.0;


	            DestroyDynamic3DTextLabel(CorpInfo[i][cText]);
	            if (!CorpInfo[i][cType] && IsValidActor(CorpInfo[i][cBody])) DestroyActor(CorpInfo[i][cBody]);
	            else if (CorpInfo[i][cType] && IsValidDynamicObject(CorpInfo[i][cBody])) DestroyDynamicObject(CorpInfo[i][cBody]);
	        }
	        case 1: {
	            new Float:x, Float:y, Float:z;
	            GetPlayerPos(playerid, x, y, z);

	            CorpInfo[i][cType] = 0;
	            CorpInfo[i][cX] = x+0.75;
	            CorpInfo[i][cY] = y;
	            CorpInfo[i][cZ] = z-0.5;
	            CorpInfo[i][cTime] = gettime();

	            CorpInfo[i][cText]=CreateDynamic3DTextLabel("Dead Body\n"SVRCLR"(( Press 'N' or type /corpse' ))", COLOR_WHITE, CorpInfo[i][cX], CorpInfo[i][cY], CorpInfo[i][cZ]-0.5, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid), -1, 50.0);

	            pTemp[playerid][UsingCorpse] = 0;

	            SetActorPos(CorpInfo[i][cBody], CorpInfo[i][cX], CorpInfo[i][cY], CorpInfo[i][cZ]);
	            SendClientMessage(playerid, COLOR_GREY, "You removed the body from the wheelchair.");
	        }
	        case 2: {
	            if (IsValidDynamicObject(CorpInfo[i][cBody]))        DestroyDynamicObject(CorpInfo[i][cBody]);
	            if (IsValidDynamic3DTextLabel(CorpInfo[i][cText]))   DestroyDynamic3DTextLabel(CorpInfo[i][cText]);

	            new Float:x, Float:y, Float:z;
	            GetPlayerPos(playerid, x, y, z);

	            CorpInfo[i][cType] = 0;
	            CorpInfo[i][cX] = x+0.75;
	            CorpInfo[i][cY] = y;
	            CorpInfo[i][cZ] = z-0.5;
	            CorpInfo[i][cTime] = gettime();

	            CorpInfo[i][cBody]=CreateActor(CorpInfo[i][cSkin], x+0.75-0.5, y, z, 0.0);
	            SetActorInvulnerable(CorpInfo[i][cBody], true);
	            ApplyActorAnimation(CorpInfo[i][cBody], "PED", "KO_shot_stom", 4.0, 0, 0, 0, 1, 0);

	            CorpInfo[i][cText]=CreateDynamic3DTextLabel("Dead Body\n"SVRCLR"(( Press 'N' or type /corpse' ))", COLOR_WHITE, CorpInfo[i][cX], CorpInfo[i][cY], CorpInfo[i][cZ]-0.5, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid), -1, 50.0);

	            if (CorpInfo[i][cType] == 3) SendClientMessage(playerid, COLOR_GREY, "You have unearthed the body.");
	            else                        SendClientMessage(playerid, COLOR_GREY, "You got the body out of the bag.");
	        }
	        case 4:
	        {
	            if (!pTemp[playerid][UsingBort])  return SendClientMessage(playerid, COLOR_GREY, "Take the wheelchair first! (/stretcher)");
	            if (pTemp[playerid][UsingCorpse]) return SendClientMessage(playerid, COLOR_GREY, "You already have a body on a gurney!");

	            if (IsValidDynamic3DTextLabel(CorpInfo[i][cText]))   DestroyDynamic3DTextLabel(CorpInfo[i][cText]);

	            pTemp[playerid][UsingCorpse] = i;
	            CorpInfo[i][cType] = 1;

	            SendClientMessage(playerid, COLOR_GREY, "You put the body on a wheelchair.");
	        }
	        case 5:
	        {
	            if (PlayerInfo[playerid][pBodyBag] == 0) return SendClientMessage(playerid, COLOR_GREY, "You don't have a body bag.");

	            new Float:posZ;
	            GetActorFacingAngle(CorpInfo[i][cBody], posZ);

	            if (IsValidActor(CorpInfo[i][cBody]))  DestroyActor(CorpInfo[i][cBody]);

	            SetPVarInt(playerid, #CorpsEdit, i+1);

	            CorpInfo[i][cType] = 2;
	            CorpInfo[i][cBody]=CreateDynamicObject(19944, CorpInfo[i][cX], CorpInfo[i][cY], CorpInfo[i][cZ]-0.5, 0.0, 0.0, posZ, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid));

	            EditDynamicObject(playerid, CorpInfo[i][cBody]);

	            SendMessage(playerid, COLOR_GREY, "You put the body in a bag. [ID:%i]", i);
	            callcmd::me(playerid, "packs the body in a bag.");
	        }
	        case 6:
	        {
	            if (GetPlayerVirtualWorld(playerid) || GetPlayerInterior(playerid)) return SendClientMessage(playerid, COLOR_GREY, "You cannot bury a body here!");
	            new weaponid = GetScriptWeapon(playerid);
	            if(weaponid != 6) return SendClientMessage(playerid, COLOR_GREY, "The shovel should be in hand!");

	            new Float:posZ;
	            GetActorFacingAngle(CorpInfo[i][cBody], posZ);

	            if (IsValidActor(CorpInfo[i][cBody]))  DestroyActor(CorpInfo[i][cBody]);
	            if (IsValidDynamicObject(CorpInfo[i][cBody]))  DestroyDynamicObject(CorpInfo[i][cBody]);

	            SetPVarInt(playerid, #CorpsEdit, i+1);

	            CorpInfo[i][cType] = 3;
	            CorpInfo[i][cBody]=CreateDynamicObject(19944 , CorpInfo[i][cX], CorpInfo[i][cY], CorpInfo[i][cZ]-0.5, 0.0, 0.0, posZ, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid));
	            SetObjectMaterial(CorpInfo[i][cBody], 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);

	            EditDynamicObject(playerid, CorpInfo[i][cBody]);

	            SendMessage(playerid, COLOR_GREY, "You buried the corpse. [ID:%i]", i);
	            callcmd::me(playerid, "buries the corpse.");
	        }
	        case 7:
	        {
	            SendMessage(playerid, COLOR_GREY, "You have deleted the corpse object. [ID:%i]", i);
	            RemoveCorpse(i);
	            return 1;
	        }
	    }
	}
	
// Anywhere on script
// Corpse System
GetNearestCorpse(playerid, Float:corpse_range = 2.0)
{
    if (GetPlayerState(playerid) == PLAYER_STATE_DRIVER) return -1;

	for(new i = 0; i < sizeof(CorpInfo); i++)
    {
        if (CorpInfo[i][cUsed] == 1)
        {
            if (IsPlayerInRangeOfPoint(playerid, corpse_range, CorpInfo[i][cX], CorpInfo[i][cY], CorpInfo[i][cZ]))
            {
                return i;
            }
        }
    }
    return -1;
}

RemoveCorpse(id)
{
	if (id == 0) return 1;
	if (CorpInfo[id][cUsed] == 1)
	{
	    CorpInfo[id][cUsed]=0;
        CorpInfo[id][cType]=0;
	    CorpInfo[id][cX]=0;
        CorpInfo[id][cY]=0;
        CorpInfo[id][cZ]=0;
		CorpInfo[id][cSkin]=0;

		if (IsValidActor(CorpInfo[id][cBody]))           DestroyActor(CorpInfo[id][cBody]);
        if (IsValidDynamicObject(CorpInfo[id][cBody]))   DestroyDynamicObject(CorpInfo[id][cBody]);

        if (CorpInfo[id][cVeh] > 0 && GetVehicleModel(CorpInfo[id][cVeh]) > 0) {
		    VehicleInfo[CorpInfo[id][cVeh]][vCorp]=0;
		} else { DestroyDynamic3DTextLabel(CorpInfo[id][cText]); }

        for(new i; i < GetPlayerPoolSize(); i++) {
            if (pTemp[i][UsingCorpse] == id) {
                pTemp[i][UsingCorpse] = 0;
                break;
            }
        }
	}
	return 1;
}

Corpse_OnPlayerEdit(playerid, objectid, response, Float:x, Float:y, Float:z, Float:rz)
{
    if (GetPVarInt(playerid, #CorpsEdit) != 0 && (response == EDIT_RESPONSE_FINAL || response == EDIT_RESPONSE_CANCEL))
	{
		new Float:oldX, Float:oldY, Float:oldZ, Float:oldRotX, Float:oldRotY, Float:oldRotZ;

		GetDynamicObjectPos(objectid, oldX, oldY, oldZ);
		GetDynamicObjectRot(objectid, oldRotX, oldRotY, oldRotZ);

	    new id = GetPVarInt(playerid, #CorpsEdit)-1;
		DeletePVar(playerid, #CorpsEdit);

	    if (id < 0 || id >= sizeof(CorpInfo) || !CorpInfo[id][cUsed])
	    {
	    	return SendClientMessage(playerid, COLOR_GREY, "The body was not found.");
	    }
	    if (objectid != CorpInfo[id][cBody])
	    {
	    	return  SendClientMessage(playerid, COLOR_GREY, "Corpse edit error.");
	    }

		SetDynamicObjectPos(objectid, x, y, z);
		SetDynamicObjectRot(objectid, 0.0, 0.0, rz);

        GetDynamicObjectPos(objectid, CorpInfo[id][cX], CorpInfo[id][cY], CorpInfo[id][cZ]);

        if (IsValidDynamic3DTextLabel(CorpInfo[id][cText])) DestroyDynamic3DTextLabel(CorpInfo[id][cText]);
        CorpInfo[id][cText] = CreateDynamic3DTextLabel("Dead Body\n"SVRCLR"(( Press 'N' or type /corpse' ))", COLOR_WHITE, CorpInfo[id][cX], CorpInfo[id][cY], CorpInfo[id][cZ]-0.5, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid), -1, 50.0);
	}
    return 1;
}

stock GetXYInFrontOfPlayerEx(playerid, &Float:X, &Float:Y, &Float:Z, Float:distance)
{
	new Float:A;
	GetPlayerPos(playerid, X, Y, Z);

	if (GetPlayerVehicleID(playerid))	GetVehicleZAngle(GetPlayerVehicleID(playerid), A);
	else			GetPlayerFacingAngle(playerid, A);

	X += (distance * floatsin(-A, degrees));
	Y += (distance * floatcos(-A, degrees));
}

Corpse_OnPlayerUpdate(playerid)
{
    if(pTemp[playerid][UsingBort] && pTemp[playerid][UsingCorpse])
	{
        new Float:X, Float:Y, Float:Z, Float:R;
        GetPlayerPos(playerid, X, Y, Z);
        GetPlayerFacingAngle(playerid, R);
        GetXYInFrontOfPlayerEx(playerid, X, Y, Z, 1.8);

        new idx = pTemp[playerid][UsingCorpse];
        CorpInfo[idx][cX]=X;
        CorpInfo[idx][cY]=Y;
        CorpInfo[idx][cZ]=Z;
        SetActorPos(CorpInfo[idx][cBody], X, Y, Z + 0.60);
        SetActorFacingAngle(CorpInfo[idx][cBody], R);
    }
    return 1;
}

Corpse_OnPlayerEnterVehicle(playerid)
{
    if (pTemp[playerid][UsingBort])
    {
        new Float:x, Float:y, Float:z;
        GetPlayerPos(playerid, x, y, z);
        SetPlayerPos(playerid,x,y,z);
        SendClientMessage(playerid,COLOR_GREY, "You cannot get into the vehicle while holding the wheelchair.");
    }
    return 1;
}

CreateCorpse(playerid, weaponid)
{
    if (weaponid == 53) return 1;

    new
        found = 0,
        foundid = 0,
        Float:x,
        Float:y,
        Float:z,
        sex[8],
        age
    ;

    GetPlayerPos(playerid, x, y, z);

	for(new o = 0; o < sizeof(CorpInfo); o++)
	{
		if (o != 0)
		{
	        if (CorpInfo[o][cUsed] == 0 && found == 0)
		    {
		        found++;
			    foundid=o;
                break;
            }
        }
    }
    if (found == 0) return 1;

    CorpInfo[foundid][cUsed]=1;
    CorpInfo[foundid][cVeh]=0;

    format(CorpInfo[foundid][cName], 25, "%s", GetRPName(playerid));
    CorpInfo[foundid][cType] = 0;
    CorpInfo[foundid][cTime] = gettime();

    CorpInfo[foundid][cX]=x;
    CorpInfo[foundid][cY]=y;
    CorpInfo[foundid][cZ]=z;

    if (weaponid == 54) CorpInfo[foundid][cX] -= 0.5;

	CorpInfo[foundid][cSkin]=GetPlayerSkin(playerid);
	CorpInfo[foundid][cBody]=CreateActor(GetPlayerSkin(playerid), x, y, z, 0.0);
	SetActorInvulnerable(CorpInfo[foundid][cBody], true);
	ApplyActorAnimation(CorpInfo[foundid][cBody], "PED", "KO_shot_stom", 4.0, 0, 0, 0, 1, 0);
    SetActorVirtualWorld(CorpInfo[foundid][cBody], GetPlayerVirtualWorld(playerid));

	if (PlayerInfo[playerid][pGender] == 1)	format(sex, sizeof(sex), "Male");
	else 			                        format(sex, sizeof(sex), "Female");

    age = PlayerInfo[playerid][pAge];

    format(CorpInfo[foundid][cNote], 500, ""SVRCLR"[Corpse Information]:\n\n\
	"WHITE"Name: %s \n\
	"WHITE"Age: %d\n\
	"WHITE"Gender: %s\n\n\
	"SVRCLR"[Death Reason]:\n\
	"WHITE"We do not know the reason why he died\n\
	"WHITE"And his life was unconscious", GetRPName(playerid), age, sex);

    CorpInfo[foundid][cText] = CreateDynamic3DTextLabel("Dead Body\n"SVRCLR"(( Press 'N' or type /corpse' ))", COLOR_WHITE, x, y, z-0.5, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid), -1, 50.0);
	return 1;
}

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

IsNearTrunk(vehicle, playerid, Float: dist = 4.0)
{
	new Float: x, Float: y, Float: z;
    GetVehicleBoot(vehicle, x, y, z);

    if (GetPlayerDistanceFromPoint(playerid, x, y, z) > dist) return 0;

	return 1;
}

CMD:corpse(playerid, params[])
{

    new i;

    if(PlayerInfo[playerid][pInjured] > 0 || PlayerInfo[playerid][pTazedTime] > 0 || PlayerInfo[playerid][pCuffed] > 0)
	{
	    return SendClientMessage(playerid, COLOR_GREY, "You can't use this command at the moment.");
	}
    if(!PlayerInfo[playerid][pLogged])
	{
	    SendClientMessage(playerid, COLOR_RED, "You cannot use commands if you're not logged in.");
		return 0;
	}
    if ((i = GetNearestCorpse(playerid)) == -1)
    {
    	return SendClientMessage(playerid, COLOR_RED, "There is no corpse near you.");
    }
    ShowPlayerDialog(playerid, CorpseInfo, DIALOG_STYLE_MSGBOX, "Unknown body", CorpInfo[i][cNote], "Options", "Close");
    return 1;
}

//--------------------------------------------------------------

// CMD:car
else if (!strcmp(parametrs, "corpse", true))
	{
		new vehicle = GetNearbyVehicle(playerid);
		new engine, lights, alarm, doors, bonnet, boot, objective;
        if (vehicle == -1)		return SendClientMessage(playerid, COLOR_SYNTAX, "You are not near vehicle.");
 		if (!IsNearTrunk(vehicle, playerid, 2.0)) 	return SendClientMessage(playerid, COLOR_SYNTAX, "You are not near the trunk! ");
		GetVehicleParamsEx(vehicle, engine, lights, alarm, doors, bonnet, boot, objective);
		if(boot == VEHICLE_PARAMS_OFF || boot == VEHICLE_PARAMS_UNSET)
		{
			SendClientMessage(playerid, COLOR_SYNTAX, "The vehicle's trunk must be opened to unload crates.");
			return 1;
		}
		if (!VehicleInfo[vehicle][vCorp] && !CorpInfo[VehicleInfo[vehicle][vCorp]][cUsed]) return SendClientMessage(playerid, COLOR_SYNTAX, "There is no corpse in the trunk. ");

		new Float:pos[3];
		GetPlayerPos(playerid, pos[0], pos[1], pos[2]);

		DestroyDynamic3DTextLabel(CorpInfo[VehicleInfo[vehicle][vCorp]-1][cText]);

	    CorpInfo[VehicleInfo[vehicle][vCorp]-1][cText]=CreateDynamic3DTextLabel("Dead Body\n"SVRCLR"(( Press 'N' or type /corpse' ))", COLOR_WHITE, pos[0]+0.75, pos[1], pos[2]-0.4, 50.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid), -1, 50.0);
		CorpInfo[VehicleInfo[vehicle][vCorp]-1][cX] = pos[0]+0.75;
	    CorpInfo[VehicleInfo[vehicle][vCorp]-1][cY] = pos[1];
	    CorpInfo[VehicleInfo[vehicle][vCorp]-1][cZ] = pos[2];
	    CorpInfo[VehicleInfo[vehicle][vCorp]-1][cVeh] = 0;
		CorpInfo[VehicleInfo[vehicle][vCorp]-1][cTime] = gettime();
		if (CorpInfo[VehicleInfo[vehicle][vCorp]-1][cType] == 0) {
			CorpInfo[VehicleInfo[vehicle][vCorp]-1][cBody]=CreateActor(CorpInfo[VehicleInfo[vehicle][vCorp]-1][cSkin], pos[0]+0.75, pos[1], pos[2], 0.0);
			SetActorInvulnerable(CorpInfo[VehicleInfo[vehicle][vCorp]-1][cBody], true);
			ApplyActorAnimation(CorpInfo[VehicleInfo[vehicle][vCorp]-1][cBody], "PED", "KO_shot_stom", 4.0, 0, 0, 0, 1, 0);
		} else {
			CorpInfo[VehicleInfo[vehicle][vCorp]-1][cBody]=CreateDynamicObject(19944, pos[0]+0.75, pos[1], pos[2]-0.5, 0.0, 0.0, 0.0, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid));
		}

	    VehicleInfo[vehicle][vCorp]=0;
		SendClientMessage(playerid, COLOR_SYNTAX, "You pulled a corpse out of the trunk.");
	}