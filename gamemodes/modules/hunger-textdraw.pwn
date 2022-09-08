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
/                                 Pawn File: Hunger and Thirst Vars Script
/                                 Module Folder: Modules
/
/                               Module Created by:
/	                        		Stewart - Stewart#8221 - Alcazar City Roleplay
/
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
*/

//Variables
new PlayerText:HungerandThirstTD[MAX_PLAYERS][6];

HungerTD(playerid)
{
	HungerandThirstTD[playerid][0] = CreatePlayerTextDraw(playerid, 128.000000, 342.000000, "HUD:radar_burgershot");
	PlayerTextDrawFont(playerid, HungerandThirstTD[playerid][0], 4);
	PlayerTextDrawLetterSize(playerid, HungerandThirstTD[playerid][0], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, HungerandThirstTD[playerid][0], 14.500000, 16.500000);
	PlayerTextDrawSetOutline(playerid, HungerandThirstTD[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, HungerandThirstTD[playerid][0], 0);
	PlayerTextDrawAlignment(playerid, HungerandThirstTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, HungerandThirstTD[playerid][0], -1);
	PlayerTextDrawBackgroundColor(playerid, HungerandThirstTD[playerid][0], 255);
	PlayerTextDrawBoxColor(playerid, HungerandThirstTD[playerid][0], 50);
	PlayerTextDrawUseBox(playerid, HungerandThirstTD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, HungerandThirstTD[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, HungerandThirstTD[playerid][0], 0);

	HungerandThirstTD[playerid][1] = CreatePlayerTextDraw(playerid, 155.000000, 343.000000, "100");
	PlayerTextDrawFont(playerid, HungerandThirstTD[playerid][1], 2);
	PlayerTextDrawLetterSize(playerid, HungerandThirstTD[playerid][1], 0.450000, 1.650000);
	PlayerTextDrawTextSize(playerid, HungerandThirstTD[playerid][1], 14.500000, 16.500000);
	PlayerTextDrawSetOutline(playerid, HungerandThirstTD[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, HungerandThirstTD[playerid][1], 0);
	PlayerTextDrawAlignment(playerid, HungerandThirstTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, HungerandThirstTD[playerid][1], -1);
	PlayerTextDrawBackgroundColor(playerid, HungerandThirstTD[playerid][1], 255);
	PlayerTextDrawBoxColor(playerid, HungerandThirstTD[playerid][1], 50);
	PlayerTextDrawUseBox(playerid, HungerandThirstTD[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid, HungerandThirstTD[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, HungerandThirstTD[playerid][1], 0);

	HungerandThirstTD[playerid][2] = CreatePlayerTextDraw(playerid, 147.000000, 343.000000, "i");
	PlayerTextDrawFont(playerid, HungerandThirstTD[playerid][2], 2);
	PlayerTextDrawLetterSize(playerid, HungerandThirstTD[playerid][2], 0.450000, 1.650000);
	PlayerTextDrawTextSize(playerid, HungerandThirstTD[playerid][2], 14.500000, 16.500000);
	PlayerTextDrawSetOutline(playerid, HungerandThirstTD[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, HungerandThirstTD[playerid][2], 0);
	PlayerTextDrawAlignment(playerid, HungerandThirstTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, HungerandThirstTD[playerid][2], -1);
	PlayerTextDrawBackgroundColor(playerid, HungerandThirstTD[playerid][2], 255);
	PlayerTextDrawBoxColor(playerid, HungerandThirstTD[playerid][2], 50);
	PlayerTextDrawUseBox(playerid, HungerandThirstTD[playerid][2], 0);
	PlayerTextDrawSetProportional(playerid, HungerandThirstTD[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, HungerandThirstTD[playerid][2], 0);

	HungerandThirstTD[playerid][3] = CreatePlayerTextDraw(playerid, 128.000000, 375.000000, "HUD:radar_datedrink");
	PlayerTextDrawFont(playerid, HungerandThirstTD[playerid][3], 4);
	PlayerTextDrawLetterSize(playerid, HungerandThirstTD[playerid][3], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, HungerandThirstTD[playerid][3], 14.500000, 16.500000);
	PlayerTextDrawSetOutline(playerid, HungerandThirstTD[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, HungerandThirstTD[playerid][3], 0);
	PlayerTextDrawAlignment(playerid, HungerandThirstTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, HungerandThirstTD[playerid][3], -1);
	PlayerTextDrawBackgroundColor(playerid, HungerandThirstTD[playerid][3], 255);
	PlayerTextDrawBoxColor(playerid, HungerandThirstTD[playerid][3], 50);
	PlayerTextDrawUseBox(playerid, HungerandThirstTD[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, HungerandThirstTD[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, HungerandThirstTD[playerid][3], 0);

	HungerandThirstTD[playerid][4] = CreatePlayerTextDraw(playerid, 147.000000, 375.000000, "i");
	PlayerTextDrawFont(playerid, HungerandThirstTD[playerid][4], 2);
	PlayerTextDrawLetterSize(playerid, HungerandThirstTD[playerid][4], 0.450000, 1.650000);
	PlayerTextDrawTextSize(playerid, HungerandThirstTD[playerid][4], 14.500000, 16.500000);
	PlayerTextDrawSetOutline(playerid, HungerandThirstTD[playerid][4], 1);
	PlayerTextDrawSetShadow(playerid, HungerandThirstTD[playerid][4], 0);
	PlayerTextDrawAlignment(playerid, HungerandThirstTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, HungerandThirstTD[playerid][4], -1);
	PlayerTextDrawBackgroundColor(playerid, HungerandThirstTD[playerid][4], 255);
	PlayerTextDrawBoxColor(playerid, HungerandThirstTD[playerid][4], 50);
	PlayerTextDrawUseBox(playerid, HungerandThirstTD[playerid][4], 0);
	PlayerTextDrawSetProportional(playerid, HungerandThirstTD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, HungerandThirstTD[playerid][4], 0);

	HungerandThirstTD[playerid][5] = CreatePlayerTextDraw(playerid, 155.000000, 374.000000, "110");
	PlayerTextDrawFont(playerid, HungerandThirstTD[playerid][5], 2);
	PlayerTextDrawLetterSize(playerid, HungerandThirstTD[playerid][5], 0.450000, 1.650000);
	PlayerTextDrawTextSize(playerid, HungerandThirstTD[playerid][5], 14.500000, 16.500000);
	PlayerTextDrawSetOutline(playerid, HungerandThirstTD[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, HungerandThirstTD[playerid][5], 0);
	PlayerTextDrawAlignment(playerid, HungerandThirstTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, HungerandThirstTD[playerid][5], -1);
	PlayerTextDrawBackgroundColor(playerid, HungerandThirstTD[playerid][5], 255);
	PlayerTextDrawBoxColor(playerid, HungerandThirstTD[playerid][5], 50);
	PlayerTextDrawUseBox(playerid, HungerandThirstTD[playerid][5], 0);
	PlayerTextDrawSetProportional(playerid, HungerandThirstTD[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, HungerandThirstTD[playerid][5], 0);
}