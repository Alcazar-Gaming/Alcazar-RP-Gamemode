new PlayerText:RegisterLoginTD[MAX_PLAYERS][15];

RegisterLoginTD(playerid)
{
    RegisterLoginTD[playerid][0] = CreatePlayerTextDraw(playerid, 57.000000, 350.000000, "_");
	PlayerTextDrawFont(playerid, RegisterLoginTD[playerid][0], 1);
	PlayerTextDrawLetterSize(playerid, RegisterLoginTD[playerid][0], 0.600000, 1.500004);
	PlayerTextDrawTextSize(playerid, RegisterLoginTD[playerid][0], 339.000000, 91.000000);
	PlayerTextDrawSetOutline(playerid, RegisterLoginTD[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, RegisterLoginTD[playerid][0], 0);
	PlayerTextDrawAlignment(playerid, RegisterLoginTD[playerid][0], 2);
	PlayerTextDrawColor(playerid, RegisterLoginTD[playerid][0], -1);
	PlayerTextDrawBackgroundColor(playerid, RegisterLoginTD[playerid][0], 255);
	PlayerTextDrawBoxColor(playerid, RegisterLoginTD[playerid][0], 1114092287);
	PlayerTextDrawUseBox(playerid, RegisterLoginTD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, RegisterLoginTD[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterLoginTD[playerid][0], 0);

	RegisterLoginTD[playerid][1] = CreatePlayerTextDraw(playerid, 12.000000, 350.000000, "f");
	PlayerTextDrawFont(playerid, RegisterLoginTD[playerid][1], 3);
	PlayerTextDrawLetterSize(playerid, RegisterLoginTD[playerid][1], 0.362499, 1.650000);
	PlayerTextDrawTextSize(playerid, RegisterLoginTD[playerid][1], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, RegisterLoginTD[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, RegisterLoginTD[playerid][1], 0);
	PlayerTextDrawAlignment(playerid, RegisterLoginTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, RegisterLoginTD[playerid][1], -1);
	PlayerTextDrawBackgroundColor(playerid, RegisterLoginTD[playerid][1], 255);
	PlayerTextDrawBoxColor(playerid, RegisterLoginTD[playerid][1], 50);
	PlayerTextDrawUseBox(playerid, RegisterLoginTD[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid, RegisterLoginTD[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterLoginTD[playerid][1], 0);

	RegisterLoginTD[playerid][2] = CreatePlayerTextDraw(playerid, 23.000000, 351.000000, "facebook.com/arpnumba1");
	PlayerTextDrawFont(playerid, RegisterLoginTD[playerid][2], 1);
	PlayerTextDrawLetterSize(playerid, RegisterLoginTD[playerid][2], 0.216666, 1.500000);
	PlayerTextDrawTextSize(playerid, RegisterLoginTD[playerid][2], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, RegisterLoginTD[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, RegisterLoginTD[playerid][2], 0);
	PlayerTextDrawAlignment(playerid, RegisterLoginTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, RegisterLoginTD[playerid][2], -1);
	PlayerTextDrawBackgroundColor(playerid, RegisterLoginTD[playerid][2], 255);
	PlayerTextDrawBoxColor(playerid, RegisterLoginTD[playerid][2], 50);
	PlayerTextDrawUseBox(playerid, RegisterLoginTD[playerid][2], 0);
	PlayerTextDrawSetProportional(playerid, RegisterLoginTD[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterLoginTD[playerid][2], 0);

	RegisterLoginTD[playerid][3] = CreatePlayerTextDraw(playerid, 57.000000, 319.000000, "_");
	PlayerTextDrawFont(playerid, RegisterLoginTD[playerid][3], 1);
	PlayerTextDrawLetterSize(playerid, RegisterLoginTD[playerid][3], 0.600000, 1.500004);
	PlayerTextDrawTextSize(playerid, RegisterLoginTD[playerid][3], 339.000000, 91.000000);
	PlayerTextDrawSetOutline(playerid, RegisterLoginTD[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, RegisterLoginTD[playerid][3], 0);
	PlayerTextDrawAlignment(playerid, RegisterLoginTD[playerid][3], 2);
	PlayerTextDrawColor(playerid, RegisterLoginTD[playerid][3], -1);
	PlayerTextDrawBackgroundColor(playerid, RegisterLoginTD[playerid][3], 255);
	PlayerTextDrawBoxColor(playerid, RegisterLoginTD[playerid][3], 741291007);
	PlayerTextDrawUseBox(playerid, RegisterLoginTD[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, RegisterLoginTD[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterLoginTD[playerid][3], 0);

	RegisterLoginTD[playerid][4] = CreatePlayerTextDraw(playerid, 12.000000, 320.000000, "D");
	PlayerTextDrawFont(playerid, RegisterLoginTD[playerid][4], 0);
	PlayerTextDrawLetterSize(playerid, RegisterLoginTD[playerid][4], 0.362499, 1.650000);
	PlayerTextDrawTextSize(playerid, RegisterLoginTD[playerid][4], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, RegisterLoginTD[playerid][4], 1);
	PlayerTextDrawSetShadow(playerid, RegisterLoginTD[playerid][4], 0);
	PlayerTextDrawAlignment(playerid, RegisterLoginTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, RegisterLoginTD[playerid][4], -1);
	PlayerTextDrawBackgroundColor(playerid, RegisterLoginTD[playerid][4], 255);
	PlayerTextDrawBoxColor(playerid, RegisterLoginTD[playerid][4], 50);
	PlayerTextDrawUseBox(playerid, RegisterLoginTD[playerid][4], 0);
	PlayerTextDrawSetProportional(playerid, RegisterLoginTD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterLoginTD[playerid][4], 0);

	RegisterLoginTD[playerid][5] = CreatePlayerTextDraw(playerid, 33.000000, 319.000000, "dsc.gg/arpnumba1");
	PlayerTextDrawFont(playerid, RegisterLoginTD[playerid][5], 1);
	PlayerTextDrawLetterSize(playerid, RegisterLoginTD[playerid][5], 0.216666, 1.500000);
	PlayerTextDrawTextSize(playerid, RegisterLoginTD[playerid][5], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, RegisterLoginTD[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, RegisterLoginTD[playerid][5], 0);
	PlayerTextDrawAlignment(playerid, RegisterLoginTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, RegisterLoginTD[playerid][5], -1);
	PlayerTextDrawBackgroundColor(playerid, RegisterLoginTD[playerid][5], 255);
	PlayerTextDrawBoxColor(playerid, RegisterLoginTD[playerid][5], 50);
	PlayerTextDrawUseBox(playerid, RegisterLoginTD[playerid][5], 0);
	PlayerTextDrawSetProportional(playerid, RegisterLoginTD[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterLoginTD[playerid][5], 0);

	RegisterLoginTD[playerid][6] = CreatePlayerTextDraw(playerid, 324.000000, -2.000000, "_");
	PlayerTextDrawFont(playerid, RegisterLoginTD[playerid][6], 1);
	PlayerTextDrawLetterSize(playerid, RegisterLoginTD[playerid][6], 0.600000, 5.399999);
	PlayerTextDrawTextSize(playerid, RegisterLoginTD[playerid][6], 298.500000, 700.500000);
	PlayerTextDrawSetOutline(playerid, RegisterLoginTD[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid, RegisterLoginTD[playerid][6], 0);
	PlayerTextDrawAlignment(playerid, RegisterLoginTD[playerid][6], 2);
	PlayerTextDrawColor(playerid, RegisterLoginTD[playerid][6], -1);
	PlayerTextDrawBackgroundColor(playerid, RegisterLoginTD[playerid][6], 255);
	PlayerTextDrawBoxColor(playerid, RegisterLoginTD[playerid][6], 135);
	PlayerTextDrawUseBox(playerid, RegisterLoginTD[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, RegisterLoginTD[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterLoginTD[playerid][6], 0);

	RegisterLoginTD[playerid][7] = CreatePlayerTextDraw(playerid, 257.000000, 12.000000, "Alcazar Roleplay");
	PlayerTextDrawFont(playerid, RegisterLoginTD[playerid][7], 0);
	PlayerTextDrawLetterSize(playerid, RegisterLoginTD[playerid][7], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, RegisterLoginTD[playerid][7], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, RegisterLoginTD[playerid][7], 1);
	PlayerTextDrawSetShadow(playerid, RegisterLoginTD[playerid][7], 0);
	PlayerTextDrawAlignment(playerid, RegisterLoginTD[playerid][7], 1);
	PlayerTextDrawColor(playerid, RegisterLoginTD[playerid][7], -1);
	PlayerTextDrawBackgroundColor(playerid, RegisterLoginTD[playerid][7], 255);
	PlayerTextDrawBoxColor(playerid, RegisterLoginTD[playerid][7], 50);
	PlayerTextDrawUseBox(playerid, RegisterLoginTD[playerid][7], 0);
	PlayerTextDrawSetProportional(playerid, RegisterLoginTD[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterLoginTD[playerid][7], 0);

	RegisterLoginTD[playerid][8] = CreatePlayerTextDraw(playerid, 308.000000, 33.000000, "v0.1.795");
	PlayerTextDrawFont(playerid, RegisterLoginTD[playerid][8], 2);
	PlayerTextDrawLetterSize(playerid, RegisterLoginTD[playerid][8], 0.283333, 1.300000);
	PlayerTextDrawTextSize(playerid, RegisterLoginTD[playerid][8], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, RegisterLoginTD[playerid][8], 1);
	PlayerTextDrawSetShadow(playerid, RegisterLoginTD[playerid][8], 0);
	PlayerTextDrawAlignment(playerid, RegisterLoginTD[playerid][8], 1);
	PlayerTextDrawColor(playerid, RegisterLoginTD[playerid][8], -1);
	PlayerTextDrawBackgroundColor(playerid, RegisterLoginTD[playerid][8], 255);
	PlayerTextDrawBoxColor(playerid, RegisterLoginTD[playerid][8], 50);
	PlayerTextDrawUseBox(playerid, RegisterLoginTD[playerid][8], 0);
	PlayerTextDrawSetProportional(playerid, RegisterLoginTD[playerid][8], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterLoginTD[playerid][8], 0);

	RegisterLoginTD[playerid][9] = CreatePlayerTextDraw(playerid, 324.000000, 410.000000, "_");
	PlayerTextDrawFont(playerid, RegisterLoginTD[playerid][9], 1);
	PlayerTextDrawLetterSize(playerid, RegisterLoginTD[playerid][9], 0.600000, 5.399999);
	PlayerTextDrawTextSize(playerid, RegisterLoginTD[playerid][9], 298.500000, 700.500000);
	PlayerTextDrawSetOutline(playerid, RegisterLoginTD[playerid][9], 1);
	PlayerTextDrawSetShadow(playerid, RegisterLoginTD[playerid][9], 0);
	PlayerTextDrawAlignment(playerid, RegisterLoginTD[playerid][9], 2);
	PlayerTextDrawColor(playerid, RegisterLoginTD[playerid][9], -1);
	PlayerTextDrawBackgroundColor(playerid, RegisterLoginTD[playerid][9], 255);
	PlayerTextDrawBoxColor(playerid, RegisterLoginTD[playerid][9], 135);
	PlayerTextDrawUseBox(playerid, RegisterLoginTD[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, RegisterLoginTD[playerid][9], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterLoginTD[playerid][9], 0);

	RegisterLoginTD[playerid][10] = CreatePlayerTextDraw(playerid, 253.000000, 419.000000, "MOTD: Happy Gaming Everyone");
	PlayerTextDrawFont(playerid, RegisterLoginTD[playerid][10], 1);
	PlayerTextDrawLetterSize(playerid, RegisterLoginTD[playerid][10], 0.229167, 1.100000);
	PlayerTextDrawTextSize(playerid, RegisterLoginTD[playerid][10], 655.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, RegisterLoginTD[playerid][10], 1);
	PlayerTextDrawSetShadow(playerid, RegisterLoginTD[playerid][10], 0);
	PlayerTextDrawAlignment(playerid, RegisterLoginTD[playerid][10], 1);
	PlayerTextDrawColor(playerid, RegisterLoginTD[playerid][10], -1);
	PlayerTextDrawBackgroundColor(playerid, RegisterLoginTD[playerid][10], 255);
	PlayerTextDrawBoxColor(playerid, RegisterLoginTD[playerid][10], 50);
	PlayerTextDrawUseBox(playerid, RegisterLoginTD[playerid][10], 0);
	PlayerTextDrawSetProportional(playerid, RegisterLoginTD[playerid][10], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterLoginTD[playerid][10], 0);

	RegisterLoginTD[playerid][11] = CreatePlayerTextDraw(playerid, 58.000000, 200.000000, "_");
	PlayerTextDrawFont(playerid, RegisterLoginTD[playerid][11], 1);
	PlayerTextDrawLetterSize(playerid, RegisterLoginTD[playerid][11], 0.600000, 7.249991);
	PlayerTextDrawTextSize(playerid, RegisterLoginTD[playerid][11], 298.500000, 95.000000);
	PlayerTextDrawSetOutline(playerid, RegisterLoginTD[playerid][11], 1);
	PlayerTextDrawSetShadow(playerid, RegisterLoginTD[playerid][11], 0);
	PlayerTextDrawAlignment(playerid, RegisterLoginTD[playerid][11], 2);
	PlayerTextDrawColor(playerid, RegisterLoginTD[playerid][11], -1);
	PlayerTextDrawBackgroundColor(playerid, RegisterLoginTD[playerid][11], 255);
	PlayerTextDrawBoxColor(playerid, RegisterLoginTD[playerid][11], 135);
	PlayerTextDrawUseBox(playerid, RegisterLoginTD[playerid][11], 1);
	PlayerTextDrawSetProportional(playerid, RegisterLoginTD[playerid][11], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterLoginTD[playerid][11], 0);

	RegisterLoginTD[playerid][12] = CreatePlayerTextDraw(playerid, 14.000000, 229.000000, "Online Players:               110");
	PlayerTextDrawFont(playerid, RegisterLoginTD[playerid][12], 1);
	PlayerTextDrawLetterSize(playerid, RegisterLoginTD[playerid][12], 0.200000, 1.050000);
	PlayerTextDrawTextSize(playerid, RegisterLoginTD[playerid][12], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, RegisterLoginTD[playerid][12], 1);
	PlayerTextDrawSetShadow(playerid, RegisterLoginTD[playerid][12], 0);
	PlayerTextDrawAlignment(playerid, RegisterLoginTD[playerid][12], 1);
	PlayerTextDrawColor(playerid, RegisterLoginTD[playerid][12], -1);
	PlayerTextDrawBackgroundColor(playerid, RegisterLoginTD[playerid][12], 255);
	PlayerTextDrawBoxColor(playerid, RegisterLoginTD[playerid][12], 50);
	PlayerTextDrawUseBox(playerid, RegisterLoginTD[playerid][12], 0);
	PlayerTextDrawSetProportional(playerid, RegisterLoginTD[playerid][12], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterLoginTD[playerid][12], 0);

	RegisterLoginTD[playerid][13] = CreatePlayerTextDraw(playerid, 14.000000, 212.000000, "Online Admins:               100");
	PlayerTextDrawFont(playerid, RegisterLoginTD[playerid][13], 1);
	PlayerTextDrawLetterSize(playerid, RegisterLoginTD[playerid][13], 0.200000, 1.050000);
	PlayerTextDrawTextSize(playerid, RegisterLoginTD[playerid][13], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, RegisterLoginTD[playerid][13], 1);
	PlayerTextDrawSetShadow(playerid, RegisterLoginTD[playerid][13], 0);
	PlayerTextDrawAlignment(playerid, RegisterLoginTD[playerid][13], 1);
	PlayerTextDrawColor(playerid, RegisterLoginTD[playerid][13], -1);
	PlayerTextDrawBackgroundColor(playerid, RegisterLoginTD[playerid][13], 255);
	PlayerTextDrawBoxColor(playerid, RegisterLoginTD[playerid][13], 50);
	PlayerTextDrawUseBox(playerid, RegisterLoginTD[playerid][13], 0);
	PlayerTextDrawSetProportional(playerid, RegisterLoginTD[playerid][13], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterLoginTD[playerid][13], 0);

	RegisterLoginTD[playerid][14] = CreatePlayerTextDraw(playerid, 14.000000, 247.000000, "Player Record:               120");
	PlayerTextDrawFont(playerid, RegisterLoginTD[playerid][14], 1);
	PlayerTextDrawLetterSize(playerid, RegisterLoginTD[playerid][14], 0.200000, 1.050000);
	PlayerTextDrawTextSize(playerid, RegisterLoginTD[playerid][14], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, RegisterLoginTD[playerid][14], 1);
	PlayerTextDrawSetShadow(playerid, RegisterLoginTD[playerid][14], 0);
	PlayerTextDrawAlignment(playerid, RegisterLoginTD[playerid][14], 1);
	PlayerTextDrawColor(playerid, RegisterLoginTD[playerid][14], -1);
	PlayerTextDrawBackgroundColor(playerid, RegisterLoginTD[playerid][14], 255);
	PlayerTextDrawBoxColor(playerid, RegisterLoginTD[playerid][14], 50);
	PlayerTextDrawUseBox(playerid, RegisterLoginTD[playerid][14], 0);
	PlayerTextDrawSetProportional(playerid, RegisterLoginTD[playerid][14], 1);
	PlayerTextDrawSetSelectable(playerid, RegisterLoginTD[playerid][14], 0);
}

