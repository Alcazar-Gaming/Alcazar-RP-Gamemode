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
/                                 Pawn File: Animation Script
/                                 Module Folder: Modules
/
/                               Module Created by:
/	                        		Stewart - Stewart#8221 - Alcazar City Roleplay
/								   With the help of Legacy Gaming Development Team
/									
/								
/										Interaction System Script from Legacy Gaming
/
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
*/

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    // Interact
	if(dialogid == DIALOG_INTERACT)
	{
		if(response)
		{
			new string[512];
			strcat(string, "Type\tValue");
			format(string, sizeof(string), "%s\n\
			Pay\t%s\n\
			Give\tMaterial And Pot\n\
			Show\tPlayer Information", string, FormatNumber(pData[playerid][pCash]));
			ShowPlayerDialog(playerid, DIALOG_INTERACT1, DIALOG_STYLE_TABLIST_HEADERS, "Player Interaction Menu", string, "Select", "Cancel");
		}
	}
    if(dialogid == DIALOG_INTERACT1)
	{
		if(response)
		{
			if(listitem == 0)
			{
				pData[playerid][pSelected] = listitem;
				
				new string[512];
				format(string, sizeof(string), ""WHITE"  You are about to give %s"WHITE" some money.\n\
				        Current Balance: %s.\n\
				   "WHITE"   \n\
				   Input the amount of money you want to give this person.", GetRPName(listitem), FormatNumber(pData[playerid][pCash]));
				
				ShowPlayerDialog(playerid, DIALOG_PAYINPUT, DIALOG_STYLE_INPUT, "Player Interaction Menu", string, "Give", "Cancel");
			}
			if(listitem == 1)
			{
				new string[512];
				format(string, sizeof(string), "\
				Item\tAmount\n\
				Materials\t%d"WHITE"\n\
				Pot\t%d", pData[playerid][pMaterials], pData[playerid][pPot]);
				ShowPlayerDialog(playerid, DIALOG_PICKGIVE0, DIALOG_STYLE_TABLIST_HEADERS, "Player Interaction Menu", string, "Select", "Back");
			}
			if(listitem == 2)
			{
				new targetid;
			    pData[playerid][pSelected] = targetid;
			    SendClientMessage(targetid, COLOR_GLOBAL, "ID Card:");
	            SM(targetid, COLOR_GREY1, "Name: %s", GetRPName(playerid));
	            SM(targetid, COLOR_GREY1, "Gender: %s", (pData[playerid][pGender] == 2) ? ("Female") : ("Male"));
	            SM(targetid, COLOR_GREY1, "Age: %i Years Old", pData[playerid][pAge]);
	            SM(targetid, COLOR_GREY1, "Drivers License: %s", (pData[playerid][pCarLicense]) ? (""SVRCLR"Yes") : (""SVRCLR"No"));
	            SM(targetid, COLOR_GREY1, "Weapon License: %s", (pData[playerid][pWeaponLicense]) ? (""SVRCLR"Yes") : (""SVRCLR"No"));
	            if(targetid != playerid) SendProximityMessage(playerid, 20.0, COLOR_GLOBAL, "**{C2A2DA} %s shows their ID card to %s.", GetRPName(playerid), GetRPName(targetid));
			}
		}
	}
	if(dialogid == DIALOG_PICKGIVE0)
	{
		if(!response) ShowInteractDialog(playerid);
		if(response)
		{
			if(listitem == 0)
			{
				new string[512];
				format(string, sizeof(string), ""WHITE"  You are about to give %s"WHITE" some Materials.\n\
				        Current Materials: %d.\n\
				   "WHITE"   \n\
				   Input the amount of Materials you want to give this person.", GetRPName(listitem), pData[playerid][pMaterials]);
				
				ShowPlayerDialog(playerid, DIALOG_GIVEINPUT0, DIALOG_STYLE_INPUT, "Player Interaction Menu", string, "Give", "Cancel");
			}
			if(listitem == 1)
			{
				new name;
				pData[playerid][pSelected] = name;
				new string[512];
				format(string, sizeof(string), ""WHITE"  You are about to give %s some Pot.\n\
				        Current Pot: %d.\n\
				   "WHITE"   \n\
				   Input the amount of Pot you want to give this person.", GetRPName(name), pData[playerid][pPot]);
				
				ShowPlayerDialog(playerid, DIALOG_GIVEINPUT1, DIALOG_STYLE_INPUT, "Player Interaction Menu", string, "Give", "Cancel");
			}
		}
	}
	if(dialogid == DIALOG_PAYINPUT)
	{
		if(response)
		{
			new name;
			pData[playerid][pSelected] = name;
			new money = strval(inputtext);
			if(money > pData[playerid][pCash]) return SendClientMessage(playerid, COLOR_SYNTAX, "You don't have Money to pay this player.");
			pData[name][pCash] += strval(inputtext);
			pData[playerid][pCash] -= strval(inputtext);
			
            // MysqlSave :>
			mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET cash = %i WHERE uid = %i", pData[name][pCash], pData[name][pID]);
			mysql_tquery(connectionID, queryBuffer);

			mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET cash = %i WHERE uid = %i", pData[playerid][pCash], pData[playerid][pID]);
			mysql_tquery(connectionID, queryBuffer);



			SendProximityMessage(playerid, 20.0, COLOR_GLOBAL, "**{C2A2DA} %s takes out some Cash from their pocket, and hands it to %s.", GetRPName(playerid), GetRPName(name));

		}
	}
	if(dialogid == DIALOG_GIVEINPUT0)
	{
		if(response)
		{
			new name;
			pData[playerid][pSelected] = name;
			new materials = strval(inputtext);
			if(materials > pData[playerid][pMaterials]) return SendClientMessage(playerid, COLOR_SYNTAX, "You don't have Materials to pay this player.");
			pData[name][pMaterials] += strval(inputtext);
			pData[playerid][pMaterials] -= strval(inputtext);

			// MysqlSave :>
			mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET materials = %i WHERE uid = %i", pData[name][pMaterials], pData[name][pID]);
			mysql_tquery(connectionID, queryBuffer);

			mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET materials = %i WHERE uid = %i", pData[playerid][pMaterials], pData[playerid][pID]);
			mysql_tquery(connectionID, queryBuffer);


			SendProximityMessage(playerid, 20.0, COLOR_GLOBAL, "**{C2A2DA} %s takes out some Materials from their pocket, and hands it to %s.", GetRPName(playerid), GetRPName(name));
		}
	}
	if(dialogid == DIALOG_GIVEINPUT1)
	{
		if(response)
		{
			new name;
			pData[playerid][pSelected] = name;
			new pot = strval(inputtext);
			if(pot > pData[playerid][pPot]) return SendClientMessage(playerid, COLOR_SYNTAX, "You don't have Pot to pay this player.");
			pData[name][pPot] += strval(inputtext);
			pData[playerid][pPot] -= strval(inputtext);

            // MysqlSave :>
			mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET pot = %i WHERE uid = %i", pData[name][pPot], pData[name][pID]);
			mysql_tquery(connectionID, queryBuffer);

			mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "UPDATE users SET pot = %i WHERE uid = %i", pData[playerid][pPot], pData[playerid][pID]);
			mysql_tquery(connectionID, queryBuffer);


			SendProximityMessage(playerid, 20.0, COLOR_GLOBAL, "**{C2A2DA} %s takes out some Pot from their pocket, and hands it to %s.", GetRPName(playerid), GetRPName(name));
		}
	}
    #if defined INT_OnDialogResponse
        return INT_OnDialogResponse(playerid, dialogid, response, listitem, inputtext);
    #else
        return 1;
    #endif
}

#if defined _ALS_OnDialogResponse
    #undef OnDialogResponse
#else
    #define _ALS_OnDialogResponse
#endif
#define OnDialogResponse INT_OnDialogResponse
#if defined INT_OnDialogResponse
    forward INT_OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]);
#endif


CMD:i(playerid, params[]) return callcmd::interact(playerid, params);
CMD:interact(playerid, params[])
{
	new sDialog[1024], Float:x, Float:y, Float:z;
	GetPlayerPos(playerid, x, y, z);

	foreach(new i : Player)
	{
		if(ProxDetectorS(10, playerid, i) && i != playerid)
		{
			new Float:point = GetPlayerDistanceFromPoint(i, x, y, z);
			format(sDialog, sizeof(sDialog), "Name:\tMeters\n\
			%s (ID: %d)\t"YELLOW"%.1f Meters\n", ReturnName(i), i, point);
		}
		else 
		{
			ShowPlayerDialog(playerid, 0, DIALOG_STYLE_MSGBOX, "Player Interaction Menu", "\n\
			"WHITE"Player Interaction Menu\n\n\
			"WHITE"There is no player near you, so you cannot use this interact\n\
			"WHITE"Note: You approach the players so you can use it to interact", "Close", "");
		}
	}
	ShowPlayerDialog(playerid, DIALOG_INTERACT, DIALOG_STYLE_TABLIST_HEADERS, "Player Interaction Menu", sDialog, "Select", "Cancel");
	return 1;
}
stock ShowInteractDialog(playerid)
{
	new string[512];
	strcat(string, "Type\tValue");
	format(string, sizeof(string), "%s\n\
	Pay\t%s\n\
	Give\tMaterial And Pot\n\
	Show\tPlayer Information", string, FormatNumber(pData[playerid][pCash]));
	ShowPlayerDialog(playerid, DIALOG_INTERACT1, DIALOG_STYLE_TABLIST_HEADERS, "Player Interaction Menu", string, "Select", "Cancel");
	return 1;
}