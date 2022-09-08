new PlayerText:EntrancePopupTD[MAX_PLAYERS][10];
new PlayerText:BizPopupTD[MAX_PLAYERS][12];
new PlayerText:HousePopupTD[MAX_PLAYERS][10];


EntranceTextDraws(playerid)
{
    EntrancePopupTD[playerid][0] = CreatePlayerTextDraw(playerid, 547.000000, 120.000000, "_");
	PlayerTextDrawFont(playerid, EntrancePopupTD[playerid][0], 1);
	PlayerTextDrawLetterSize(playerid, EntrancePopupTD[playerid][0], 0.600000, 17.150001);
	PlayerTextDrawTextSize(playerid, EntrancePopupTD[playerid][0], 298.500000, 128.000000);
	PlayerTextDrawSetOutline(playerid, EntrancePopupTD[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, EntrancePopupTD[playerid][0], 0);
	PlayerTextDrawAlignment(playerid, EntrancePopupTD[playerid][0], 2);
	PlayerTextDrawColor(playerid, EntrancePopupTD[playerid][0], -1);
	PlayerTextDrawBackgroundColor(playerid, EntrancePopupTD[playerid][0], 255);
	PlayerTextDrawBoxColor(playerid, EntrancePopupTD[playerid][0], 135);
	PlayerTextDrawUseBox(playerid, EntrancePopupTD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, EntrancePopupTD[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, EntrancePopupTD[playerid][0], 0);

	EntrancePopupTD[playerid][1] = CreatePlayerTextDraw(playerid, 509.000000, 124.000000, "Entrance Info");
	PlayerTextDrawFont(playerid, EntrancePopupTD[playerid][1], 2);
	PlayerTextDrawLetterSize(playerid, EntrancePopupTD[playerid][1], 0.233333, 1.350000);
	PlayerTextDrawTextSize(playerid, EntrancePopupTD[playerid][1], 675.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, EntrancePopupTD[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, EntrancePopupTD[playerid][1], 0);
	PlayerTextDrawAlignment(playerid, EntrancePopupTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, EntrancePopupTD[playerid][1], -1);
	PlayerTextDrawBackgroundColor(playerid, EntrancePopupTD[playerid][1], 255);
	PlayerTextDrawBoxColor(playerid, EntrancePopupTD[playerid][1], 50);
	PlayerTextDrawUseBox(playerid, EntrancePopupTD[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid, EntrancePopupTD[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, EntrancePopupTD[playerid][1], 0);

	EntrancePopupTD[playerid][2] = CreatePlayerTextDraw(playerid, 501.000000, 159.000000, "Name: Kyoshiro Entrance");
	PlayerTextDrawFont(playerid, EntrancePopupTD[playerid][2], 1);
	PlayerTextDrawLetterSize(playerid, EntrancePopupTD[playerid][2], 0.212498, 1.200000);
	PlayerTextDrawTextSize(playerid, EntrancePopupTD[playerid][2], 660.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, EntrancePopupTD[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, EntrancePopupTD[playerid][2], 0);
	PlayerTextDrawAlignment(playerid, EntrancePopupTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, EntrancePopupTD[playerid][2], -1);
	PlayerTextDrawBackgroundColor(playerid, EntrancePopupTD[playerid][2], 255);
	PlayerTextDrawBoxColor(playerid, EntrancePopupTD[playerid][2], 50);
	PlayerTextDrawUseBox(playerid, EntrancePopupTD[playerid][2], 0);
	PlayerTextDrawSetProportional(playerid, EntrancePopupTD[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, EntrancePopupTD[playerid][2], 0);

	EntrancePopupTD[playerid][3] = CreatePlayerTextDraw(playerid, 515.000000, 138.000000, "Dynamic Door System - A-RP");
	PlayerTextDrawFont(playerid, EntrancePopupTD[playerid][3], 1);
	PlayerTextDrawLetterSize(playerid, EntrancePopupTD[playerid][3], 0.133332, 0.699999);
	PlayerTextDrawTextSize(playerid, EntrancePopupTD[playerid][3], 680.500000, 17.000000);
	PlayerTextDrawSetOutline(playerid, EntrancePopupTD[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, EntrancePopupTD[playerid][3], 0);
	PlayerTextDrawAlignment(playerid, EntrancePopupTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, EntrancePopupTD[playerid][3], -1);
	PlayerTextDrawBackgroundColor(playerid, EntrancePopupTD[playerid][3], 255);
	PlayerTextDrawBoxColor(playerid, EntrancePopupTD[playerid][3], 50);
	PlayerTextDrawUseBox(playerid, EntrancePopupTD[playerid][3], 0);
	PlayerTextDrawSetProportional(playerid, EntrancePopupTD[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, EntrancePopupTD[playerid][3], 0);

	EntrancePopupTD[playerid][4] = CreatePlayerTextDraw(playerid, 504.000000, 175.000000, "Owned By: Kyoshiro Chin");
	PlayerTextDrawFont(playerid, EntrancePopupTD[playerid][4], 1);
	PlayerTextDrawLetterSize(playerid, EntrancePopupTD[playerid][4], 0.195832, 1.149999);
	PlayerTextDrawTextSize(playerid, EntrancePopupTD[playerid][4], 825.000000, -318.000000);
	PlayerTextDrawSetOutline(playerid, EntrancePopupTD[playerid][4], 1);
	PlayerTextDrawSetShadow(playerid, EntrancePopupTD[playerid][4], 0);
	PlayerTextDrawAlignment(playerid, EntrancePopupTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, EntrancePopupTD[playerid][4], -1);
	PlayerTextDrawBackgroundColor(playerid, EntrancePopupTD[playerid][4], 255);
	PlayerTextDrawBoxColor(playerid, EntrancePopupTD[playerid][4], 50);
	PlayerTextDrawUseBox(playerid, EntrancePopupTD[playerid][4], 0);
	PlayerTextDrawSetProportional(playerid, EntrancePopupTD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, EntrancePopupTD[playerid][4], 0);

	EntrancePopupTD[playerid][5] = CreatePlayerTextDraw(playerid, 520.000000, 191.000000, "Address: ~y~Market");
	PlayerTextDrawFont(playerid, EntrancePopupTD[playerid][5], 1);
	PlayerTextDrawLetterSize(playerid, EntrancePopupTD[playerid][5], 0.174998, 1.049999);
	PlayerTextDrawTextSize(playerid, EntrancePopupTD[playerid][5], 660.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, EntrancePopupTD[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, EntrancePopupTD[playerid][5], 0);
	PlayerTextDrawAlignment(playerid, EntrancePopupTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, EntrancePopupTD[playerid][5], -1);
	PlayerTextDrawBackgroundColor(playerid, EntrancePopupTD[playerid][5], 255);
	PlayerTextDrawBoxColor(playerid, EntrancePopupTD[playerid][5], 50);
	PlayerTextDrawUseBox(playerid, EntrancePopupTD[playerid][5], 0);
	PlayerTextDrawSetProportional(playerid, EntrancePopupTD[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, EntrancePopupTD[playerid][5], 0);

	EntrancePopupTD[playerid][6] = CreatePlayerTextDraw(playerid, 535.000000, 205.000000, "ID: 500");
	PlayerTextDrawFont(playerid, EntrancePopupTD[playerid][6], 1);
	PlayerTextDrawLetterSize(playerid, EntrancePopupTD[playerid][6], 0.174998, 1.049999);
	PlayerTextDrawTextSize(playerid, EntrancePopupTD[playerid][6], 660.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, EntrancePopupTD[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid, EntrancePopupTD[playerid][6], 0);
	PlayerTextDrawAlignment(playerid, EntrancePopupTD[playerid][6], 1);
	PlayerTextDrawColor(playerid, EntrancePopupTD[playerid][6], -1);
	PlayerTextDrawBackgroundColor(playerid, EntrancePopupTD[playerid][6], 255);
	PlayerTextDrawBoxColor(playerid, EntrancePopupTD[playerid][6], 50);
	PlayerTextDrawUseBox(playerid, EntrancePopupTD[playerid][6], 0);
	PlayerTextDrawSetProportional(playerid, EntrancePopupTD[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, EntrancePopupTD[playerid][6], 0);

	EntrancePopupTD[playerid][7] = CreatePlayerTextDraw(playerid, 548.000000, 255.000000, "_");
	PlayerTextDrawFont(playerid, EntrancePopupTD[playerid][7], 1);
	PlayerTextDrawLetterSize(playerid, EntrancePopupTD[playerid][7], 0.600000, 1.800003);
	PlayerTextDrawTextSize(playerid, EntrancePopupTD[playerid][7], 298.500000, 75.000000);
	PlayerTextDrawSetOutline(playerid, EntrancePopupTD[playerid][7], 1);
	PlayerTextDrawSetShadow(playerid, EntrancePopupTD[playerid][7], 0);
	PlayerTextDrawAlignment(playerid, EntrancePopupTD[playerid][7], 2);
	PlayerTextDrawColor(playerid, EntrancePopupTD[playerid][7], -1);
	PlayerTextDrawBackgroundColor(playerid, EntrancePopupTD[playerid][7], 255);
	PlayerTextDrawBoxColor(playerid, EntrancePopupTD[playerid][7], -2016478585);
	PlayerTextDrawUseBox(playerid, EntrancePopupTD[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, EntrancePopupTD[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid, EntrancePopupTD[playerid][7], 0);

	EntrancePopupTD[playerid][8] = CreatePlayerTextDraw(playerid, 531.000000, 259.000000, "Interact");
	PlayerTextDrawFont(playerid, EntrancePopupTD[playerid][8], 2);
	PlayerTextDrawLetterSize(playerid, EntrancePopupTD[playerid][8], 0.174998, 1.049999);
	PlayerTextDrawTextSize(playerid, EntrancePopupTD[playerid][8], 660.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, EntrancePopupTD[playerid][8], 1);
	PlayerTextDrawSetShadow(playerid, EntrancePopupTD[playerid][8], 0);
	PlayerTextDrawAlignment(playerid, EntrancePopupTD[playerid][8], 1);
	PlayerTextDrawColor(playerid, EntrancePopupTD[playerid][8], -1);
	PlayerTextDrawBackgroundColor(playerid, EntrancePopupTD[playerid][8], 255);
	PlayerTextDrawBoxColor(playerid, EntrancePopupTD[playerid][8], 50);
	PlayerTextDrawUseBox(playerid, EntrancePopupTD[playerid][8], 0);
	PlayerTextDrawSetProportional(playerid, EntrancePopupTD[playerid][8], 1);
	PlayerTextDrawSetSelectable(playerid, EntrancePopupTD[playerid][8], 1);

	EntrancePopupTD[playerid][9] = CreatePlayerTextDraw(playerid, 498.000000, 238.000000, "Press the 'Interact' Button to Enter/Exit");
	PlayerTextDrawFont(playerid, EntrancePopupTD[playerid][9], 1);
	PlayerTextDrawLetterSize(playerid, EntrancePopupTD[playerid][9], 0.145832, 0.999999);
	PlayerTextDrawTextSize(playerid, EntrancePopupTD[playerid][9], 660.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, EntrancePopupTD[playerid][9], 1);
	PlayerTextDrawSetShadow(playerid, EntrancePopupTD[playerid][9], 0);
	PlayerTextDrawAlignment(playerid, EntrancePopupTD[playerid][9], 1);
	PlayerTextDrawColor(playerid, EntrancePopupTD[playerid][9], -1);
	PlayerTextDrawBackgroundColor(playerid, EntrancePopupTD[playerid][9], 255);
	PlayerTextDrawBoxColor(playerid, EntrancePopupTD[playerid][9], 50);
	PlayerTextDrawUseBox(playerid, EntrancePopupTD[playerid][9], 0);
	PlayerTextDrawSetProportional(playerid, EntrancePopupTD[playerid][9], 1);
	PlayerTextDrawSetSelectable(playerid, EntrancePopupTD[playerid][9], 0);
}

BusinessTextDraw(playerid)
{
    BizPopupTD[playerid][0] = CreatePlayerTextDraw(playerid, 547.000000, 120.000000, "_");
	PlayerTextDrawFont(playerid, BizPopupTD[playerid][0], 1);
	PlayerTextDrawLetterSize(playerid, BizPopupTD[playerid][0], 0.600000, 17.599994);
	PlayerTextDrawTextSize(playerid, BizPopupTD[playerid][0], 298.500000, 128.000000);
	PlayerTextDrawSetOutline(playerid, BizPopupTD[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, BizPopupTD[playerid][0], 0);
	PlayerTextDrawAlignment(playerid, BizPopupTD[playerid][0], 2);
	PlayerTextDrawColor(playerid, BizPopupTD[playerid][0], -1);
	PlayerTextDrawBackgroundColor(playerid, BizPopupTD[playerid][0], 255);
	PlayerTextDrawBoxColor(playerid, BizPopupTD[playerid][0], 135);
	PlayerTextDrawUseBox(playerid, BizPopupTD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, BizPopupTD[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, BizPopupTD[playerid][0], 0);

	BizPopupTD[playerid][1] = CreatePlayerTextDraw(playerid, 511.000000, 124.000000, "Business Info");
	PlayerTextDrawFont(playerid, BizPopupTD[playerid][1], 2);
	PlayerTextDrawLetterSize(playerid, BizPopupTD[playerid][1], 0.233333, 1.350000);
	PlayerTextDrawTextSize(playerid, BizPopupTD[playerid][1], 675.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, BizPopupTD[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, BizPopupTD[playerid][1], 0);
	PlayerTextDrawAlignment(playerid, BizPopupTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, BizPopupTD[playerid][1], -1);
	PlayerTextDrawBackgroundColor(playerid, BizPopupTD[playerid][1], 255);
	PlayerTextDrawBoxColor(playerid, BizPopupTD[playerid][1], 50);
	PlayerTextDrawUseBox(playerid, BizPopupTD[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid, BizPopupTD[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, BizPopupTD[playerid][1], 0);

	BizPopupTD[playerid][2] = CreatePlayerTextDraw(playerid, 501.000000, 159.000000, "Name: Kyoshiro Entrance");
	PlayerTextDrawFont(playerid, BizPopupTD[playerid][2], 1);
	PlayerTextDrawLetterSize(playerid, BizPopupTD[playerid][2], 0.212497, 1.200000);
	PlayerTextDrawTextSize(playerid, BizPopupTD[playerid][2], 660.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, BizPopupTD[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, BizPopupTD[playerid][2], 0);
	PlayerTextDrawAlignment(playerid, BizPopupTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, BizPopupTD[playerid][2], -1);
	PlayerTextDrawBackgroundColor(playerid, BizPopupTD[playerid][2], 255);
	PlayerTextDrawBoxColor(playerid, BizPopupTD[playerid][2], 50);
	PlayerTextDrawUseBox(playerid, BizPopupTD[playerid][2], 0);
	PlayerTextDrawSetProportional(playerid, BizPopupTD[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, BizPopupTD[playerid][2], 0);

	BizPopupTD[playerid][3] = CreatePlayerTextDraw(playerid, 512.000000, 138.000000, "Dynamic Business System - A-RP");
	PlayerTextDrawFont(playerid, BizPopupTD[playerid][3], 1);
	PlayerTextDrawLetterSize(playerid, BizPopupTD[playerid][3], 0.133331, 0.699998);
	PlayerTextDrawTextSize(playerid, BizPopupTD[playerid][3], 680.500000, 17.000000);
	PlayerTextDrawSetOutline(playerid, BizPopupTD[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, BizPopupTD[playerid][3], 0);
	PlayerTextDrawAlignment(playerid, BizPopupTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, BizPopupTD[playerid][3], -1);
	PlayerTextDrawBackgroundColor(playerid, BizPopupTD[playerid][3], 255);
	PlayerTextDrawBoxColor(playerid, BizPopupTD[playerid][3], 50);
	PlayerTextDrawUseBox(playerid, BizPopupTD[playerid][3], 0);
	PlayerTextDrawSetProportional(playerid, BizPopupTD[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, BizPopupTD[playerid][3], 0);

	BizPopupTD[playerid][4] = CreatePlayerTextDraw(playerid, 504.000000, 175.000000, "Owned By: Kyoshiro Chin");
	PlayerTextDrawFont(playerid, BizPopupTD[playerid][4], 1);
	PlayerTextDrawLetterSize(playerid, BizPopupTD[playerid][4], 0.195831, 1.149999);
	PlayerTextDrawTextSize(playerid, BizPopupTD[playerid][4], 825.000000, -318.000000);
	PlayerTextDrawSetOutline(playerid, BizPopupTD[playerid][4], 1);
	PlayerTextDrawSetShadow(playerid, BizPopupTD[playerid][4], 0);
	PlayerTextDrawAlignment(playerid, BizPopupTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, BizPopupTD[playerid][4], -1);
	PlayerTextDrawBackgroundColor(playerid, BizPopupTD[playerid][4], 255);
	PlayerTextDrawBoxColor(playerid, BizPopupTD[playerid][4], 50);
	PlayerTextDrawUseBox(playerid, BizPopupTD[playerid][4], 0);
	PlayerTextDrawSetProportional(playerid, BizPopupTD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, BizPopupTD[playerid][4], 0);

	BizPopupTD[playerid][5] = CreatePlayerTextDraw(playerid, 496.000000, 221.000000, "Address: Market");
	PlayerTextDrawFont(playerid, BizPopupTD[playerid][5], 1);
	PlayerTextDrawLetterSize(playerid, BizPopupTD[playerid][5], 0.174998, 1.049998);
	PlayerTextDrawTextSize(playerid, BizPopupTD[playerid][5], 660.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, BizPopupTD[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, BizPopupTD[playerid][5], 0);
	PlayerTextDrawAlignment(playerid, BizPopupTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, BizPopupTD[playerid][5], -1);
	PlayerTextDrawBackgroundColor(playerid, BizPopupTD[playerid][5], 255);
	PlayerTextDrawBoxColor(playerid, BizPopupTD[playerid][5], 50);
	PlayerTextDrawUseBox(playerid, BizPopupTD[playerid][5], 0);
	PlayerTextDrawSetProportional(playerid, BizPopupTD[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, BizPopupTD[playerid][5], 0);

	BizPopupTD[playerid][6] = CreatePlayerTextDraw(playerid, 565.000000, 221.000000, "ID: 500");
	PlayerTextDrawFont(playerid, BizPopupTD[playerid][6], 1);
	PlayerTextDrawLetterSize(playerid, BizPopupTD[playerid][6], 0.174998, 1.049998);
	PlayerTextDrawTextSize(playerid, BizPopupTD[playerid][6], 660.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, BizPopupTD[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid, BizPopupTD[playerid][6], 0);
	PlayerTextDrawAlignment(playerid, BizPopupTD[playerid][6], 1);
	PlayerTextDrawColor(playerid, BizPopupTD[playerid][6], -1);
	PlayerTextDrawBackgroundColor(playerid, BizPopupTD[playerid][6], 255);
	PlayerTextDrawBoxColor(playerid, BizPopupTD[playerid][6], 50);
	PlayerTextDrawUseBox(playerid, BizPopupTD[playerid][6], 0);
	PlayerTextDrawSetProportional(playerid, BizPopupTD[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, BizPopupTD[playerid][6], 0);

	BizPopupTD[playerid][7] = CreatePlayerTextDraw(playerid, 548.000000, 255.000000, "_");
	PlayerTextDrawFont(playerid, BizPopupTD[playerid][7], 1);
	PlayerTextDrawLetterSize(playerid, BizPopupTD[playerid][7], 0.600000, 1.800003);
	PlayerTextDrawTextSize(playerid, BizPopupTD[playerid][7], 298.500000, 75.000000);
	PlayerTextDrawSetOutline(playerid, BizPopupTD[playerid][7], 1);
	PlayerTextDrawSetShadow(playerid, BizPopupTD[playerid][7], 0);
	PlayerTextDrawAlignment(playerid, BizPopupTD[playerid][7], 2);
	PlayerTextDrawColor(playerid, BizPopupTD[playerid][7], -1);
	PlayerTextDrawBackgroundColor(playerid, BizPopupTD[playerid][7], 255);
	PlayerTextDrawBoxColor(playerid, BizPopupTD[playerid][7], -2016478585);
	PlayerTextDrawUseBox(playerid, BizPopupTD[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, BizPopupTD[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid, BizPopupTD[playerid][7], 0);

	BizPopupTD[playerid][8] = CreatePlayerTextDraw(playerid, 539.000000, 258.000000, "Buy");
	PlayerTextDrawFont(playerid, BizPopupTD[playerid][8], 2);
	PlayerTextDrawLetterSize(playerid, BizPopupTD[playerid][8], 0.233331, 1.249998);
	PlayerTextDrawTextSize(playerid, BizPopupTD[playerid][8], 660.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, BizPopupTD[playerid][8], 1);
	PlayerTextDrawSetShadow(playerid, BizPopupTD[playerid][8], 0);
	PlayerTextDrawAlignment(playerid, BizPopupTD[playerid][8], 1);
	PlayerTextDrawColor(playerid, BizPopupTD[playerid][8], -1);
	PlayerTextDrawBackgroundColor(playerid, BizPopupTD[playerid][8], 255);
	PlayerTextDrawBoxColor(playerid, BizPopupTD[playerid][8], 50);
	PlayerTextDrawUseBox(playerid, BizPopupTD[playerid][8], 0);
	PlayerTextDrawSetProportional(playerid, BizPopupTD[playerid][8], 1);
	PlayerTextDrawSetSelectable(playerid, BizPopupTD[playerid][8], 1);

	BizPopupTD[playerid][9] = CreatePlayerTextDraw(playerid, 507.000000, 238.000000, "Press the ~y~buy~w~ button to interact");
	PlayerTextDrawFont(playerid, BizPopupTD[playerid][9], 1);
	PlayerTextDrawLetterSize(playerid, BizPopupTD[playerid][9], 0.145832, 0.999998);
	PlayerTextDrawTextSize(playerid, BizPopupTD[playerid][9], 660.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, BizPopupTD[playerid][9], 1);
	PlayerTextDrawSetShadow(playerid, BizPopupTD[playerid][9], 0);
	PlayerTextDrawAlignment(playerid, BizPopupTD[playerid][9], 1);
	PlayerTextDrawColor(playerid, BizPopupTD[playerid][9], -1);
	PlayerTextDrawBackgroundColor(playerid, BizPopupTD[playerid][9], 255);
	PlayerTextDrawBoxColor(playerid, BizPopupTD[playerid][9], 50);
	PlayerTextDrawUseBox(playerid, BizPopupTD[playerid][9], 0);
	PlayerTextDrawSetProportional(playerid, BizPopupTD[playerid][9], 1);
	PlayerTextDrawSetSelectable(playerid, BizPopupTD[playerid][9], 0);

	BizPopupTD[playerid][10] = CreatePlayerTextDraw(playerid, 508.000000, 190.000000, "Entrance Fee: $12000");
	PlayerTextDrawFont(playerid, BizPopupTD[playerid][10], 1);
	PlayerTextDrawLetterSize(playerid, BizPopupTD[playerid][10], 0.195831, 1.149999);
	PlayerTextDrawTextSize(playerid, BizPopupTD[playerid][10], 825.000000, -318.000000);
	PlayerTextDrawSetOutline(playerid, BizPopupTD[playerid][10], 1);
	PlayerTextDrawSetShadow(playerid, BizPopupTD[playerid][10], 0);
	PlayerTextDrawAlignment(playerid, BizPopupTD[playerid][10], 1);
	PlayerTextDrawColor(playerid, BizPopupTD[playerid][10], -1);
	PlayerTextDrawBackgroundColor(playerid, BizPopupTD[playerid][10], 255);
	PlayerTextDrawBoxColor(playerid, BizPopupTD[playerid][10], 50);
	PlayerTextDrawUseBox(playerid, BizPopupTD[playerid][10], 0);
	PlayerTextDrawSetProportional(playerid, BizPopupTD[playerid][10], 1);
	PlayerTextDrawSetSelectable(playerid, BizPopupTD[playerid][10], 0);

	BizPopupTD[playerid][11] = CreatePlayerTextDraw(playerid, 523.000000, 204.000000, "Status: ~r~Closed");
	PlayerTextDrawFont(playerid, BizPopupTD[playerid][11], 1);
	PlayerTextDrawLetterSize(playerid, BizPopupTD[playerid][11], 0.195831, 1.149999);
	PlayerTextDrawTextSize(playerid, BizPopupTD[playerid][11], 825.000000, -318.000000);
	PlayerTextDrawSetOutline(playerid, BizPopupTD[playerid][11], 1);
	PlayerTextDrawSetShadow(playerid, BizPopupTD[playerid][11], 0);
	PlayerTextDrawAlignment(playerid, BizPopupTD[playerid][11], 1);
	PlayerTextDrawColor(playerid, BizPopupTD[playerid][11], -1);
	PlayerTextDrawBackgroundColor(playerid, BizPopupTD[playerid][11], 255);
	PlayerTextDrawBoxColor(playerid, BizPopupTD[playerid][11], 50);
	PlayerTextDrawUseBox(playerid, BizPopupTD[playerid][11], 0);
	PlayerTextDrawSetProportional(playerid, BizPopupTD[playerid][11], 1);
	PlayerTextDrawSetSelectable(playerid, BizPopupTD[playerid][11], 0);
}

HouseTextDraw(playerid)
{
    HousePopupTD[playerid][0] = CreatePlayerTextDraw(playerid, 547.000000, 120.000000, "_");
	PlayerTextDrawFont(playerid, HousePopupTD[playerid][0], 1);
	PlayerTextDrawLetterSize(playerid, HousePopupTD[playerid][0], 0.600000, 14.600007);
	PlayerTextDrawTextSize(playerid, HousePopupTD[playerid][0], 298.500000, 128.000000);
	PlayerTextDrawSetOutline(playerid, HousePopupTD[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, HousePopupTD[playerid][0], 0);
	PlayerTextDrawAlignment(playerid, HousePopupTD[playerid][0], 2);
	PlayerTextDrawColor(playerid, HousePopupTD[playerid][0], -1);
	PlayerTextDrawBackgroundColor(playerid, HousePopupTD[playerid][0], 255);
	PlayerTextDrawBoxColor(playerid, HousePopupTD[playerid][0], 135);
	PlayerTextDrawUseBox(playerid, HousePopupTD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, HousePopupTD[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, HousePopupTD[playerid][0], 0);

	HousePopupTD[playerid][1] = CreatePlayerTextDraw(playerid, 532.000000, 100.000000, "TextDraw");
	PlayerTextDrawFont(playerid, HousePopupTD[playerid][1], 5);
	PlayerTextDrawLetterSize(playerid, HousePopupTD[playerid][1], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, HousePopupTD[playerid][1], 26.500000, 28.500000);
	PlayerTextDrawSetOutline(playerid, HousePopupTD[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, HousePopupTD[playerid][1], 0);
	PlayerTextDrawAlignment(playerid, HousePopupTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, HousePopupTD[playerid][1], -1);
	PlayerTextDrawBackgroundColor(playerid, HousePopupTD[playerid][1], 0);
	PlayerTextDrawBoxColor(playerid, HousePopupTD[playerid][1], 255);
	PlayerTextDrawUseBox(playerid, HousePopupTD[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid, HousePopupTD[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, HousePopupTD[playerid][1], 0);
	PlayerTextDrawSetPreviewModel(playerid, HousePopupTD[playerid][1], 1272);
	PlayerTextDrawSetPreviewRot(playerid, HousePopupTD[playerid][1], -5.000000, 0.000000, -183.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid, HousePopupTD[playerid][1], 1, 1);

	HousePopupTD[playerid][2] = CreatePlayerTextDraw(playerid, 516.000000, 124.000000, "House Info");
	PlayerTextDrawFont(playerid, HousePopupTD[playerid][2], 2);
	PlayerTextDrawLetterSize(playerid, HousePopupTD[playerid][2], 0.233333, 1.350000);
	PlayerTextDrawTextSize(playerid, HousePopupTD[playerid][2], 675.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, HousePopupTD[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, HousePopupTD[playerid][2], 0);
	PlayerTextDrawAlignment(playerid, HousePopupTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, HousePopupTD[playerid][2], -1);
	PlayerTextDrawBackgroundColor(playerid, HousePopupTD[playerid][2], 255);
	PlayerTextDrawBoxColor(playerid, HousePopupTD[playerid][2], 50);
	PlayerTextDrawUseBox(playerid, HousePopupTD[playerid][2], 0);
	PlayerTextDrawSetProportional(playerid, HousePopupTD[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, HousePopupTD[playerid][2], 0);

	HousePopupTD[playerid][3] = CreatePlayerTextDraw(playerid, 513.000000, 150.000000, "House Type: None");
	PlayerTextDrawFont(playerid, HousePopupTD[playerid][3], 1);
	PlayerTextDrawLetterSize(playerid, HousePopupTD[playerid][3], 0.212497, 1.200000);
	PlayerTextDrawTextSize(playerid, HousePopupTD[playerid][3], 660.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, HousePopupTD[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, HousePopupTD[playerid][3], 0);
	PlayerTextDrawAlignment(playerid, HousePopupTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, HousePopupTD[playerid][3], -1);
	PlayerTextDrawBackgroundColor(playerid, HousePopupTD[playerid][3], 255);
	PlayerTextDrawBoxColor(playerid, HousePopupTD[playerid][3], 50);
	PlayerTextDrawUseBox(playerid, HousePopupTD[playerid][3], 0);
	PlayerTextDrawSetProportional(playerid, HousePopupTD[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, HousePopupTD[playerid][3], 0);

	HousePopupTD[playerid][4] = CreatePlayerTextDraw(playerid, 549.000000, 246.000000, "Dynamic House Info System - A-RP");
	PlayerTextDrawFont(playerid, HousePopupTD[playerid][4], 1);
	PlayerTextDrawLetterSize(playerid, HousePopupTD[playerid][4], 0.104165, 0.549998);
	PlayerTextDrawTextSize(playerid, HousePopupTD[playerid][4], 680.500000, 17.000000);
	PlayerTextDrawSetOutline(playerid, HousePopupTD[playerid][4], 1);
	PlayerTextDrawSetShadow(playerid, HousePopupTD[playerid][4], 0);
	PlayerTextDrawAlignment(playerid, HousePopupTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, HousePopupTD[playerid][4], -1);
	PlayerTextDrawBackgroundColor(playerid, HousePopupTD[playerid][4], 255);
	PlayerTextDrawBoxColor(playerid, HousePopupTD[playerid][4], 50);
	PlayerTextDrawUseBox(playerid, HousePopupTD[playerid][4], 0);
	PlayerTextDrawSetProportional(playerid, HousePopupTD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, HousePopupTD[playerid][4], 0);

	HousePopupTD[playerid][5] = CreatePlayerTextDraw(playerid, 504.000000, 137.000000, "Owned By: Kyoshiro Chin");
	PlayerTextDrawFont(playerid, HousePopupTD[playerid][5], 1);
	PlayerTextDrawLetterSize(playerid, HousePopupTD[playerid][5], 0.195831, 1.149999);
	PlayerTextDrawTextSize(playerid, HousePopupTD[playerid][5], 825.000000, -318.000000);
	PlayerTextDrawSetOutline(playerid, HousePopupTD[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, HousePopupTD[playerid][5], 0);
	PlayerTextDrawAlignment(playerid, HousePopupTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, HousePopupTD[playerid][5], -1);
	PlayerTextDrawBackgroundColor(playerid, HousePopupTD[playerid][5], 255);
	PlayerTextDrawBoxColor(playerid, HousePopupTD[playerid][5], 50);
	PlayerTextDrawUseBox(playerid, HousePopupTD[playerid][5], 0);
	PlayerTextDrawSetProportional(playerid, HousePopupTD[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, HousePopupTD[playerid][5], 0);

	HousePopupTD[playerid][6] = CreatePlayerTextDraw(playerid, 492.000000, 210.000000, "Address: Market");
	PlayerTextDrawFont(playerid, HousePopupTD[playerid][6], 1);
	PlayerTextDrawLetterSize(playerid, HousePopupTD[playerid][6], 0.174998, 1.049998);
	PlayerTextDrawTextSize(playerid, HousePopupTD[playerid][6], 660.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, HousePopupTD[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid, HousePopupTD[playerid][6], 0);
	PlayerTextDrawAlignment(playerid, HousePopupTD[playerid][6], 1);
	PlayerTextDrawColor(playerid, HousePopupTD[playerid][6], -1);
	PlayerTextDrawBackgroundColor(playerid, HousePopupTD[playerid][6], 255);
	PlayerTextDrawBoxColor(playerid, HousePopupTD[playerid][6], 50);
	PlayerTextDrawUseBox(playerid, HousePopupTD[playerid][6], 0);
	PlayerTextDrawSetProportional(playerid, HousePopupTD[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, HousePopupTD[playerid][6], 0);

	HousePopupTD[playerid][7] = CreatePlayerTextDraw(playerid, 516.000000, 178.000000, "Rent Fee: $50000");
	PlayerTextDrawFont(playerid, HousePopupTD[playerid][7], 1);
	PlayerTextDrawLetterSize(playerid, HousePopupTD[playerid][7], 0.195831, 1.149999);
	PlayerTextDrawTextSize(playerid, HousePopupTD[playerid][7], 825.000000, -318.000000);
	PlayerTextDrawSetOutline(playerid, HousePopupTD[playerid][7], 1);
	PlayerTextDrawSetShadow(playerid, HousePopupTD[playerid][7], 0);
	PlayerTextDrawAlignment(playerid, HousePopupTD[playerid][7], 1);
	PlayerTextDrawColor(playerid, HousePopupTD[playerid][7], -1);
	PlayerTextDrawBackgroundColor(playerid, HousePopupTD[playerid][7], 255);
	PlayerTextDrawBoxColor(playerid, HousePopupTD[playerid][7], 50);
	PlayerTextDrawUseBox(playerid, HousePopupTD[playerid][7], 0);
	PlayerTextDrawSetProportional(playerid, HousePopupTD[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid, HousePopupTD[playerid][7], 0);

	HousePopupTD[playerid][8] = CreatePlayerTextDraw(playerid, 523.000000, 192.000000, "Status: ~r~Closed");
	PlayerTextDrawFont(playerid, HousePopupTD[playerid][8], 1);
	PlayerTextDrawLetterSize(playerid, HousePopupTD[playerid][8], 0.195831, 1.149999);
	PlayerTextDrawTextSize(playerid, HousePopupTD[playerid][8], 825.000000, -318.000000);
	PlayerTextDrawSetOutline(playerid, HousePopupTD[playerid][8], 1);
	PlayerTextDrawSetShadow(playerid, HousePopupTD[playerid][8], 0);
	PlayerTextDrawAlignment(playerid, HousePopupTD[playerid][8], 1);
	PlayerTextDrawColor(playerid, HousePopupTD[playerid][8], -1);
	PlayerTextDrawBackgroundColor(playerid, HousePopupTD[playerid][8], 255);
	PlayerTextDrawBoxColor(playerid, HousePopupTD[playerid][8], 50);
	PlayerTextDrawUseBox(playerid, HousePopupTD[playerid][8], 0);
	PlayerTextDrawSetProportional(playerid, HousePopupTD[playerid][8], 1);
	PlayerTextDrawSetSelectable(playerid, HousePopupTD[playerid][8], 0);

	HousePopupTD[playerid][9] = CreatePlayerTextDraw(playerid, 564.000000, 210.000000, "ID: 500");
	PlayerTextDrawFont(playerid, HousePopupTD[playerid][9], 1);
	PlayerTextDrawLetterSize(playerid, HousePopupTD[playerid][9], 0.174998, 1.049998);
	PlayerTextDrawTextSize(playerid, HousePopupTD[playerid][9], 660.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, HousePopupTD[playerid][9], 1);
	PlayerTextDrawSetShadow(playerid, HousePopupTD[playerid][9], 0);
	PlayerTextDrawAlignment(playerid, HousePopupTD[playerid][9], 1);
	PlayerTextDrawColor(playerid, HousePopupTD[playerid][9], -1);
	PlayerTextDrawBackgroundColor(playerid, HousePopupTD[playerid][9], 255);
	PlayerTextDrawBoxColor(playerid, HousePopupTD[playerid][9], 50);
	PlayerTextDrawUseBox(playerid, HousePopupTD[playerid][9], 0);
	PlayerTextDrawSetProportional(playerid, HousePopupTD[playerid][9], 1);
	PlayerTextDrawSetSelectable(playerid, HousePopupTD[playerid][9], 0);
}

DefineTextDraws(playerid)
{
    EntranceTextDraws(playerid);
    BusinessTextDraw(playerid);
    HouseTextDraw(playerid);
}

//Entrance
//new EntranceTDTimerVar[MAX_PLAYERS];
stock ShowEntranceTextDraws(playerid)
{
    for(new i = 0; i < 10; i ++)
    {
        new id = GetNearbyHouse(playerid);
        new namestr[128], ownerstr[128], idstr[20], addressstr[128];

        format(namestr, sizeof(namestr), "Name: %s", EntranceInfo[id][eName]);
        format(ownerstr, sizeof(ownerstr), "Owned By: ~g~%s", EntranceInfo[id][eOwner]);
        format(idstr, sizeof(idstr), "ID: ~b~%i", EntranceInfo[id][eID]);
        format(addressstr, sizeof(addressstr), "Address: ~b~%s", GetZoneName(EntranceInfo[id][ePosX], EntranceInfo[id][ePosY], EntranceInfo[id][ePosZ]));
        PlayerTextDrawSetString(playerid, HousePopupTD[i][2], namestr);
        PlayerTextDrawSetString(playerid, HousePopupTD[i][4], ownerstr);
        PlayerTextDrawSetString(playerid, HousePopupTD[i][5], addressstr);
        PlayerTextDrawSetString(playerid, HousePopupTD[i][6], idstr);
    }
}

forward EntranceTDTimer(playerid);
public EntranceTDTimer(playerid)
{
	HideEntranceTextDraws(playerid);
}

stock HideEntranceTextDraws(playerid)
{
    for(new i = 0; i < 10; i ++)
    {
        PlayerTextDrawHide(playerid, EntrancePopupTD[playerid][i]);
    }
}

//Business
//new BizTDTimerVar[MAX_PLAYERS];
BizLockStatus(id)
{
	new string[50];
	if(!BusinessInfo[id][bLocked])
	{
		string = "~g~Open";
	}
	else
	{
		string = "~r~Closed";
	}
	return string;
}

stock ShowBizTextDraws(playerid)
{
    for(new i = 0; i < 10; i ++)
    {
        new id = GetNearbyBusiness(playerid);
        new titlestr[128], ownerstr[128], idstr[20], addressstr[128], entstr[128], lockstr[128];

        format(titlestr, sizeof(titlestr), "Name: ~y~%s", BusinessInfo[id][bName]);
        format(ownerstr, sizeof(ownerstr), "Owned By: ~g~%s", BusinessInfo[id][bOwner]);
        format(idstr, sizeof(idstr), "ID: ~b~%i", BusinessInfo[id][bID]);
        format(addressstr, sizeof(addressstr), "Address: ~b~%s", GetZoneName(BusinessInfo[id][bPosX], BusinessInfo[id][bPosY], BusinessInfo[id][bPosZ]));
        format(entstr, sizeof(entstr), "Entrance Fee: ~b~$%i", BusinessInfo[id][bEntryFee]);
        format(lockstr, sizeof(lockstr), "Status: %s", BizLockStatus(id));
        PlayerTextDrawSetString(playerid, BizPopupTD[i][2], titlestr);
        PlayerTextDrawSetString(playerid, BizPopupTD[i][4], ownerstr);
        PlayerTextDrawSetString(playerid, BizPopupTD[i][5], addressstr);
        PlayerTextDrawSetString(playerid, BizPopupTD[i][6], idstr);
        PlayerTextDrawSetString(playerid, BizPopupTD[i][10], entstr);
        PlayerTextDrawSetString(playerid, BizPopupTD[i][11], lockstr);
        PlayerTextDrawShow(playerid, BizPopupTD[playerid][i]);
    }
}

forward BizTDTimer(playerid);
public BizTDTimer(playerid)
{
	HideBizTextDraws(playerid);
}

stock HideBizTextDraws(playerid)
{
    for(new i = 0; i < 10; i ++)
    {
		CancelSelectTextDraw(playerid);
        PlayerTextDrawHide(playerid, BizPopupTD[playerid][i]);
    }
}

//House
new HouseTDTimerVar[MAX_PLAYERS];
HouseLockStatus(id)
{
	new string[50];
	if(!HouseInfo[id][hLocked])
	{
		string = "~g~Open";
	}
	else
	{
		string = "~r~Closed";
	}
	return string;
}

stock ShowHouseTextDraws(playerid)
{
    for(new i = 0; i < 10; i ++)
    {
		KillTimer(HouseTDTimerVar[playerid]);
        new id = GetNearbyHouse(playerid);
        new housestr[128], ownerstr[128], idstr[20], addressstr[128], entstr[128], lockstr[128];

        format(housestr, sizeof(housestr), "House Type: %i", HouseInfo[id][hType]);
        format(ownerstr, sizeof(ownerstr), "Owned By: ~g~%s", HouseInfo[id][hOwner]);
        format(idstr, sizeof(idstr), "ID: ~b~%i", HouseInfo[id][hID]);
        format(addressstr, sizeof(addressstr), "Address: ~b~%s", GetZoneName(HouseInfo[id][hPosX], HouseInfo[id][hPosY], HouseInfo[id][hPosZ]));
        format(entstr, sizeof(entstr), "Rent Fee: ~b~$%i", HouseInfo[id][hRentPrice]);
        format(lockstr, sizeof(lockstr), "Status: %s", HouseLockStatus(id));
        PlayerTextDrawSetString(playerid, HousePopupTD[i][3], housestr);
        PlayerTextDrawSetString(playerid, HousePopupTD[i][5], ownerstr);
        PlayerTextDrawSetString(playerid, HousePopupTD[i][6], addressstr);
		PlayerTextDrawSetString(playerid, HousePopupTD[i][7], entstr);
        PlayerTextDrawSetString(playerid, HousePopupTD[i][8], idstr);
        PlayerTextDrawSetString(playerid, HousePopupTD[i][9], lockstr);
        PlayerTextDrawShow(playerid, HousePopupTD[playerid][i]);
		HouseTDTimerVar[playerid] = SetTimerEx("HouseTDTimer", 3000, false, "i", playerid);
    }
}

forward HouseTDTimer(playerid);
public HouseTDTimer(playerid)
{
	HideHouseTextDraws(playerid);
}

stock HideHouseTextDraws(playerid)
{
    for(new i = 0; i < 10; i ++)
    {
        PlayerTextDrawHide(playerid, HousePopupTD[playerid][i]);
    }
}