forward LoadCharacterName(playerid);
public LoadCharacterName(playerid)
{
	new rows = cache_get_row_count(MySQL);
	new fields;
    //cache_get_field_content(0, "charname", AccountInfo[playerid][pCharName1], MySQL, MAX_PLAYER_NAME);
	cache_get_data(rows, fields, MySQL);

	for (new i = 0; i < rows; i ++) {
		cache_get_field_content(i, "Character", PlayerCharacters[playerid][i], MySQL, MAX_PLAYER_NAME);
	}
	SendMessageFormatted(playerid, COLOR_WHITE, "You have authenticated into your account successfully.");
	ShowCharacterMenu(playerid);
}

SelectCharacter(playerid, id)
{
	AccountInfo[playerid][pCharacter] = id;

	if (!PlayerCharacters[playerid][id - 1][0])
	    return ShowPlayerDialog(playerid, DIALOG_CHAR2, DIALOG_STYLE_INPUT, "Create Character", "Please enter the name of your new character below:\n\nWarning: Your name must be in the Firstname_Lastname format and not exceed 20 characters.", "Create", "Cancel");

	mysql_format(MySQL, holder, sizeof(holder), "SELECT * FROM characters WHERE Character = %e", PlayerCharacters[playerid][id - 1]);
	mysql_tquery(MySQL, holder, "ShowChar", "dd", playerid, GetPlayerNameEx(playerid));

	return 1;
}

forward OnCharacterCheck(playerid, character[]);// Creating Char
public OnCharacterCheck(playerid, character[])
{
	if (!IsPlayerConnected(playerid))
	    return 0;

	static
	    rows,
	    fields;

	cache_get_data(rows, fields, MySQL);

	if (rows)
	{
		new str[500];
		format(str, sizeof(str), "Error: The specified name \"%s\" is in use!\n\nPlease enter the name of your new character below:\n\nWarning: Your name must be in the Firstname_Lastname format and not exceed 24 characters.", character);
	    ShowPlayerDialog(playerid, DIALOG_CHAR2, DIALOG_STYLE_INPUT, "Create Character", str, "Create", "Cancel");
	}
	else
	{
		new name[MAX_PLAYER_NAME];
		GetPlayerName(playerid, name, MAX_PLAYER_NAME);
		format(holder, sizeof(holder), "INSERT INTO characters (`Username`, `Character`) VALUES('%s', '%s')", name, character);
		mysql_tquery(MySQL, holder, "CreateChar", "d", playerid);

		format(PlayerCharacters[playerid][AccountInfo[playerid][pCharacter] - 1], MAX_PLAYER_NAME + 1, character);
		SendMessageFormatted(playerid, COLOR_WHITE, "You have successfully created character \"%s\".", character);

		ShowCharacterMenu(playerid);
		AccountInfo[playerid][pLogged] = 0;
	}
	return 1;
}

forward CreateChar(playerid);
public CreateChar(playerid)
{
	AccountInfo[playerid][pId] = cache_insert_id(MySQL);
	AccountInfo[playerid][pLogged] = 1;

	//SaveChar(playerid);

	AccountInfo[playerid][pId] = -1;
	AccountInfo[playerid][pLogged] = 0;
}

ShowCharacterMenu(playerid)
{
	new str[500];

	if (AccountInfo[playerid][pCharacter] != 0)
	{
	    AccountInfo[playerid][pCharacter] = 0;
	}
	for (new i = 0; i < 8; i ++)
	{
	    if (i < 3) {
	        format(str, sizeof(str), "%s\n%s", str, (!PlayerCharacters[playerid][i][0]) ? ("Empty Slot") : (PlayerCharacters[playerid][i]));

			ShowPlayerDialog(playerid, DIALOG_VIEWCHAR, DIALOG_STYLE_LIST, "Character", str, "Confirm", "");
	    }
	}
}

SaveChar(playerid)
{
    new Float:x, Float:y, Float:z, Float:a;

    GetPlayerPos(playerid, x, y, z);
    GetPlayerFacingAngle(playerid, a);

    mysql_format(MySQL, holder, sizeof(holder), "UPDATE characters SET 'posx' = %f, 'posy' = %f, 'posz' = %f, 'posa' = %f, 'gender' = %i, 'age' = %i, 'skin' = %i", x, y, z, a, AccountInfo[playerid][pGender], AccountInfo[playerid][pAge], AccountInfo[playerid][pSkin]);
    mysql_format(MySQL, holder, sizeof(holder), "%s, admin = %i, helper = %i WHERE ID = %i", holder, AccountInfo[playerid][pAdmin], AccountInfo[playerid][pHelper], AccountInfo[playerid][pId]);

    mysql_tquery(MySQL, holder);
    return 1;
}

forward ShowChar(playerid, character[]);
public ShowChar(playerid, character[])
{
	new skin, age, gender;

	// Store it to the vars.
	skin = cache_get_field_content_int(0, "skin");
	age = cache_get_field_content_int(0, "age");
	gender = cache_get_field_content_int(0, "gender");

	new genderstr[20];
	if(gender == 1) genderstr = "Male";
	else if(gender == 2) genderstr = "Female";

	new str[500];
	format(str, sizeof(str), "Name: %s\nAge: %i\nGender: %s\nSkin: %i", character, age, genderstr, skin);
	ShowPlayerDialog(playerid, DIALOG_EDITCHAR, DIALOG_STYLE_TABLIST, "Character", str, "Spawn", "Back");
}


// Loading Stage
LoadChar(playerid, character)
{
	if (character < 1 || character > 3)
		return 0;

	mysql_format(MySQL, holder, sizeof(holder), "SELECT * FROM characters WHERE `Username` = '%s' AND `Character` = '%e'", GetPlayerNameEx(playerid), PlayerCharacters[playerid][character - 1]);
	mysql_tquery(MySQL, holder, "StoreVars", "ds", playerid, PlayerCharacters[playerid][character - 1]);

	return 1;
}

forward StoreVars(playerid, character[]);
public StoreVars(playerid, character[])
{
	SetPlayerName(playerid, character);
    AccountInfo[playerid][pId] = cache_get_field_content_int(0, "ID");
    
    // positions
    AccountInfo[playerid][pPosX] = cache_get_field_content_float(0, "posx");
    AccountInfo[playerid][pPosY] = cache_get_field_content_float(0, "posy");
    AccountInfo[playerid][pPosZ] = cache_get_field_content_float(0, "posz");
    AccountInfo[playerid][pPosA] = cache_get_field_content_float(0, "posa");
    
    // Important Roles
    AccountInfo[playerid][pAdmin] = cache_get_field_content_int(0, "admin");

    // Important Player Variables
    AccountInfo[playerid][pGender] = cache_get_field_content_int(0, "gender");
    AccountInfo[playerid][pAge] = cache_get_field_content_int(0, "age");
    AccountInfo[playerid][pSkin] = cache_get_field_content_int(0, "skin");
	AccountInfo[playerid][pUnregistered] = cache_get_field_content_int(0, "newbie");

	if(AccountInfo[playerid][pUnregistered] == 1)
	{
		ShowDialogPlayer(playerid, DIALOG_REGISTERMENU);
		SetPlayerPos(playerid, 1490.2845,1305.7607,1093.2964);
		SetPlayerFacingAngle(playerid, 271.4340);
		SetPlayerCameraPos(playerid, 2214.7314,-2658.1184,13.5469);
		SetPlayerCameraLookAt(playerid, 1733.6835,-1221.2250,91.6484);
		//SetPlayerCameraFacingAngle(playerid, 17.8870);
	}
    // Spawning the player
    SetPlayerToSpawn(playerid, AccountInfo[playerid][pPosX], AccountInfo[playerid][pPosY], AccountInfo[playerid][pPosZ], AccountInfo[playerid][pPosA], AccountInfo[playerid][pSkin]);
}