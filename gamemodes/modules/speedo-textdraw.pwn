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
/
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
*/

new PlayerText:SpeedTD[MAX_PLAYERS][16];

SpeedoTextdraw(playerid)
{
    SpeedTD[playerid][0] = CreatePlayerTextDraw(playerid, 318.000000, 377.000000, "_");
	PlayerTextDrawFont(playerid, SpeedTD[playerid][0], 1);
	PlayerTextDrawLetterSize(playerid, SpeedTD[playerid][0], 0.600000, 7.100003);
	PlayerTextDrawTextSize(playerid, SpeedTD[playerid][0], 296.000000, 138.500000);
	PlayerTextDrawSetOutline(playerid, SpeedTD[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, SpeedTD[playerid][0], 0);
	PlayerTextDrawAlignment(playerid, SpeedTD[playerid][0], 2);
	PlayerTextDrawColor(playerid, SpeedTD[playerid][0], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedTD[playerid][0], 255);
	PlayerTextDrawBoxColor(playerid, SpeedTD[playerid][0], -1094795641);
	PlayerTextDrawUseBox(playerid, SpeedTD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, SpeedTD[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedTD[playerid][0], 0);

	SpeedTD[playerid][1] = CreatePlayerTextDraw(playerid, 332.000000, 291.000000, "ld_beat:cring");
	PlayerTextDrawFont(playerid, SpeedTD[playerid][1], 4);
	PlayerTextDrawLetterSize(playerid, SpeedTD[playerid][1], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, SpeedTD[playerid][1], 174.500000, 193.500000);
	PlayerTextDrawSetOutline(playerid, SpeedTD[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, SpeedTD[playerid][1], 0);
	PlayerTextDrawAlignment(playerid, SpeedTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, SpeedTD[playerid][1], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedTD[playerid][1], 255);
	PlayerTextDrawBoxColor(playerid, SpeedTD[playerid][1], 50);
	PlayerTextDrawUseBox(playerid, SpeedTD[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid, SpeedTD[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedTD[playerid][1], 0);

	SpeedTD[playerid][2] = CreatePlayerTextDraw(playerid, 367.000000, 331.000000, "ld_pool:ball");
	PlayerTextDrawFont(playerid, SpeedTD[playerid][2], 4);
	PlayerTextDrawLetterSize(playerid, SpeedTD[playerid][2], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, SpeedTD[playerid][2], 103.500000, 115.000000);
	PlayerTextDrawSetOutline(playerid, SpeedTD[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, SpeedTD[playerid][2], 0);
	PlayerTextDrawAlignment(playerid, SpeedTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, SpeedTD[playerid][2], 255);
	PlayerTextDrawBackgroundColor(playerid, SpeedTD[playerid][2], 255);
	PlayerTextDrawBoxColor(playerid, SpeedTD[playerid][2], 50);
	PlayerTextDrawUseBox(playerid, SpeedTD[playerid][2], 0);
	PlayerTextDrawSetProportional(playerid, SpeedTD[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedTD[playerid][2], 0);

	SpeedTD[playerid][3] = CreatePlayerTextDraw(playerid, 377.000000, 399.000000, "20"); //20 KMH
	PlayerTextDrawFont(playerid, SpeedTD[playerid][3], 2);
	PlayerTextDrawLetterSize(playerid, SpeedTD[playerid][3], 0.312500, 1.300000);
	PlayerTextDrawTextSize(playerid, SpeedTD[playerid][3], 580.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedTD[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, SpeedTD[playerid][3], 0);
	PlayerTextDrawAlignment(playerid, SpeedTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, SpeedTD[playerid][3], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedTD[playerid][3], 255);
	PlayerTextDrawBoxColor(playerid, SpeedTD[playerid][3], 50);
	PlayerTextDrawUseBox(playerid, SpeedTD[playerid][3], 0);
	PlayerTextDrawSetProportional(playerid, SpeedTD[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedTD[playerid][3], 0);

	SpeedTD[playerid][4] = CreatePlayerTextDraw(playerid, 373.000000, 378.000000, "40");//40 KMH
	PlayerTextDrawFont(playerid, SpeedTD[playerid][4], 2);
	PlayerTextDrawLetterSize(playerid, SpeedTD[playerid][4], 0.312500, 1.300000);
	PlayerTextDrawTextSize(playerid, SpeedTD[playerid][4], 580.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedTD[playerid][4], 1);
	PlayerTextDrawSetShadow(playerid, SpeedTD[playerid][4], 0);
	PlayerTextDrawAlignment(playerid, SpeedTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, SpeedTD[playerid][4], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedTD[playerid][4], 255);
	PlayerTextDrawBoxColor(playerid, SpeedTD[playerid][4], 50);
	PlayerTextDrawUseBox(playerid, SpeedTD[playerid][4], 0);
	PlayerTextDrawSetProportional(playerid, SpeedTD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedTD[playerid][4], 0);

	SpeedTD[playerid][5] = CreatePlayerTextDraw(playerid, 378.000000, 357.000000, "60");
	PlayerTextDrawFont(playerid, SpeedTD[playerid][5], 2);
	PlayerTextDrawLetterSize(playerid, SpeedTD[playerid][5], 0.312500, 1.300000);
	PlayerTextDrawTextSize(playerid, SpeedTD[playerid][5], 580.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedTD[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, SpeedTD[playerid][5], 0);
	PlayerTextDrawAlignment(playerid, SpeedTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, SpeedTD[playerid][5], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedTD[playerid][5], 255);
	PlayerTextDrawBoxColor(playerid, SpeedTD[playerid][5], 50);
	PlayerTextDrawUseBox(playerid, SpeedTD[playerid][5], 0);
	PlayerTextDrawSetProportional(playerid, SpeedTD[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedTD[playerid][5], 0);

	SpeedTD[playerid][6] = CreatePlayerTextDraw(playerid, 389.000000, 344.000000, "80");
	PlayerTextDrawFont(playerid, SpeedTD[playerid][6], 2);
	PlayerTextDrawLetterSize(playerid, SpeedTD[playerid][6], 0.312500, 1.300000);
	PlayerTextDrawTextSize(playerid, SpeedTD[playerid][6], 580.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedTD[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid, SpeedTD[playerid][6], 0);
	PlayerTextDrawAlignment(playerid, SpeedTD[playerid][6], 1);
	PlayerTextDrawColor(playerid, SpeedTD[playerid][6], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedTD[playerid][6], 255);
	PlayerTextDrawBoxColor(playerid, SpeedTD[playerid][6], 50);
	PlayerTextDrawUseBox(playerid, SpeedTD[playerid][6], 0);
	PlayerTextDrawSetProportional(playerid, SpeedTD[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedTD[playerid][6], 0);

	SpeedTD[playerid][7] = CreatePlayerTextDraw(playerid, 403.000000, 334.000000, "100");
	PlayerTextDrawFont(playerid, SpeedTD[playerid][7], 2);
	PlayerTextDrawLetterSize(playerid, SpeedTD[playerid][7], 0.312500, 1.300000);
	PlayerTextDrawTextSize(playerid, SpeedTD[playerid][7], 580.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedTD[playerid][7], 1);
	PlayerTextDrawSetShadow(playerid, SpeedTD[playerid][7], 0);
	PlayerTextDrawAlignment(playerid, SpeedTD[playerid][7], 1);
	PlayerTextDrawColor(playerid, SpeedTD[playerid][7], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedTD[playerid][7], 255);
	PlayerTextDrawBoxColor(playerid, SpeedTD[playerid][7], 50);
	PlayerTextDrawUseBox(playerid, SpeedTD[playerid][7], 0);
	PlayerTextDrawSetProportional(playerid, SpeedTD[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedTD[playerid][7], 0);

	SpeedTD[playerid][8] = CreatePlayerTextDraw(playerid, 420.000000, 334.000000, "120");
	PlayerTextDrawFont(playerid, SpeedTD[playerid][8], 2);
	PlayerTextDrawLetterSize(playerid, SpeedTD[playerid][8], 0.312500, 1.300000);
	PlayerTextDrawTextSize(playerid, SpeedTD[playerid][8], 580.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedTD[playerid][8], 1);
	PlayerTextDrawSetShadow(playerid, SpeedTD[playerid][8], 0);
	PlayerTextDrawAlignment(playerid, SpeedTD[playerid][8], 1);
	PlayerTextDrawColor(playerid, SpeedTD[playerid][8], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedTD[playerid][8], 255);
	PlayerTextDrawBoxColor(playerid, SpeedTD[playerid][8], 50);
	PlayerTextDrawUseBox(playerid, SpeedTD[playerid][8], 0);
	PlayerTextDrawSetProportional(playerid, SpeedTD[playerid][8], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedTD[playerid][8], 0);

	SpeedTD[playerid][9] = CreatePlayerTextDraw(playerid, 435.000000, 342.000000, "140");
	PlayerTextDrawFont(playerid, SpeedTD[playerid][9], 2);
	PlayerTextDrawLetterSize(playerid, SpeedTD[playerid][9], 0.312500, 1.300000);
	PlayerTextDrawTextSize(playerid, SpeedTD[playerid][9], 580.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedTD[playerid][9], 1);
	PlayerTextDrawSetShadow(playerid, SpeedTD[playerid][9], 0);
	PlayerTextDrawAlignment(playerid, SpeedTD[playerid][9], 1);
	PlayerTextDrawColor(playerid, SpeedTD[playerid][9], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedTD[playerid][9], 255);
	PlayerTextDrawBoxColor(playerid, SpeedTD[playerid][9], 50);
	PlayerTextDrawUseBox(playerid, SpeedTD[playerid][9], 0);
	PlayerTextDrawSetProportional(playerid, SpeedTD[playerid][9], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedTD[playerid][9], 0);

	SpeedTD[playerid][10] = CreatePlayerTextDraw(playerid, 447.000000, 354.000000, "160");
	PlayerTextDrawFont(playerid, SpeedTD[playerid][10], 2);
	PlayerTextDrawLetterSize(playerid, SpeedTD[playerid][10], 0.312500, 1.300000);
	PlayerTextDrawTextSize(playerid, SpeedTD[playerid][10], 580.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedTD[playerid][10], 1);
	PlayerTextDrawSetShadow(playerid, SpeedTD[playerid][10], 0);
	PlayerTextDrawAlignment(playerid, SpeedTD[playerid][10], 1);
	PlayerTextDrawColor(playerid, SpeedTD[playerid][10], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedTD[playerid][10], 255);
	PlayerTextDrawBoxColor(playerid, SpeedTD[playerid][10], 50);
	PlayerTextDrawUseBox(playerid, SpeedTD[playerid][10], 0);
	PlayerTextDrawSetProportional(playerid, SpeedTD[playerid][10], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedTD[playerid][10], 0);

	SpeedTD[playerid][11] = CreatePlayerTextDraw(playerid, 454.000000, 371.000000, "180");
	PlayerTextDrawFont(playerid, SpeedTD[playerid][11], 2);
	PlayerTextDrawLetterSize(playerid, SpeedTD[playerid][11], 0.312500, 1.300000);
	PlayerTextDrawTextSize(playerid, SpeedTD[playerid][11], 580.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedTD[playerid][11], 1);
	PlayerTextDrawSetShadow(playerid, SpeedTD[playerid][11], 0);
	PlayerTextDrawAlignment(playerid, SpeedTD[playerid][11], 1);
	PlayerTextDrawColor(playerid, SpeedTD[playerid][11], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedTD[playerid][11], 255);
	PlayerTextDrawBoxColor(playerid, SpeedTD[playerid][11], 50);
	PlayerTextDrawUseBox(playerid, SpeedTD[playerid][11], 0);
	PlayerTextDrawSetProportional(playerid, SpeedTD[playerid][11], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedTD[playerid][11], 0);

	SpeedTD[playerid][12] = CreatePlayerTextDraw(playerid, 452.000000, 394.000000, "200");
	PlayerTextDrawFont(playerid, SpeedTD[playerid][12], 2);
	PlayerTextDrawLetterSize(playerid, SpeedTD[playerid][12], 0.312500, 1.300000);
	PlayerTextDrawTextSize(playerid, SpeedTD[playerid][12], 580.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedTD[playerid][12], 1);
	PlayerTextDrawSetShadow(playerid, SpeedTD[playerid][12], 0);
	PlayerTextDrawAlignment(playerid, SpeedTD[playerid][12], 1);
	PlayerTextDrawColor(playerid, SpeedTD[playerid][12], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedTD[playerid][12], 255);
	PlayerTextDrawBoxColor(playerid, SpeedTD[playerid][12], 50);
	PlayerTextDrawUseBox(playerid, SpeedTD[playerid][12], 0);
	PlayerTextDrawSetProportional(playerid, SpeedTD[playerid][12], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedTD[playerid][12], 0);

	SpeedTD[playerid][13] = CreatePlayerTextDraw(playerid, 418.000000, 397.000000, "_");
	PlayerTextDrawFont(playerid, SpeedTD[playerid][13], 1);
	PlayerTextDrawLetterSize(playerid, SpeedTD[playerid][13], 0.600000, 1.500002);
	PlayerTextDrawTextSize(playerid, SpeedTD[playerid][13], 296.000000, 28.000000);
	PlayerTextDrawSetOutline(playerid, SpeedTD[playerid][13], 1);
	PlayerTextDrawSetShadow(playerid, SpeedTD[playerid][13], 0);
	PlayerTextDrawAlignment(playerid, SpeedTD[playerid][13], 2);
	PlayerTextDrawColor(playerid, SpeedTD[playerid][13], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedTD[playerid][13], 255);
	PlayerTextDrawBoxColor(playerid, SpeedTD[playerid][13], -1094795641);
	PlayerTextDrawUseBox(playerid, SpeedTD[playerid][13], 1);
	PlayerTextDrawSetProportional(playerid, SpeedTD[playerid][13], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedTD[playerid][13], 0);

	SpeedTD[playerid][14] = CreatePlayerTextDraw(playerid, 415.000000, 397.000000, "100"); // Speed KMH/MPH
	PlayerTextDrawFont(playerid, SpeedTD[playerid][14], 2);
	PlayerTextDrawLetterSize(playerid, SpeedTD[playerid][14], 0.479166, 1.650000);
	PlayerTextDrawTextSize(playerid, SpeedTD[playerid][14], 585.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedTD[playerid][14], 1);
	PlayerTextDrawSetShadow(playerid, SpeedTD[playerid][14], 0);
	PlayerTextDrawAlignment(playerid, SpeedTD[playerid][14], 2);
	PlayerTextDrawColor(playerid, SpeedTD[playerid][14], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedTD[playerid][14], 255);
	PlayerTextDrawBoxColor(playerid, SpeedTD[playerid][14], 50);
	PlayerTextDrawUseBox(playerid, SpeedTD[playerid][14], 0);
	PlayerTextDrawSetProportional(playerid, SpeedTD[playerid][14], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedTD[playerid][14], 0);

	SpeedTD[playerid][15] = CreatePlayerTextDraw(playerid, 252.000000, 427.000000, "Fuel: 100"); // Fuel dictator
	PlayerTextDrawFont(playerid, SpeedTD[playerid][15], 0);
	PlayerTextDrawLetterSize(playerid, SpeedTD[playerid][15], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, SpeedTD[playerid][15], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, SpeedTD[playerid][15], 1);
	PlayerTextDrawSetShadow(playerid, SpeedTD[playerid][15], 0);
	PlayerTextDrawAlignment(playerid, SpeedTD[playerid][15], 1);
	PlayerTextDrawColor(playerid, SpeedTD[playerid][15], -1);
	PlayerTextDrawBackgroundColor(playerid, SpeedTD[playerid][15], 255);
	PlayerTextDrawBoxColor(playerid, SpeedTD[playerid][15], 50);
	PlayerTextDrawUseBox(playerid, SpeedTD[playerid][15], 0);
	PlayerTextDrawSetProportional(playerid, SpeedTD[playerid][15], 1);
	PlayerTextDrawSetSelectable(playerid, SpeedTD[playerid][15], 0);
}