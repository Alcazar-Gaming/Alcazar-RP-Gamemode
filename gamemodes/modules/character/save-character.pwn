forward SaveCharacter(playerid);
public SaveCharacter(playerid)
{
    // Saving name. Just in case the player might want to change his/her name using city hall
    new Name[MAX_PLAYER_NAME];
    GetPlayerName(playerid, Name, sizeof(Name));
    mysql_format(MySQL, holder, sizeof(holder), "UPDATE 'characters' SET charname = '%e' WHERE charname = '%e'", Name, GetPlayerNameEx(playerid));
    mysql_tquery(MySQL, holder);

    // Position Saving
    new Float:x, Float:y, Float:z, Float:a;
    GetPlayerPos(playerid, x, y, z);
    GetPlayerFacingAngle(playerid, a);
    mysql_format(MySQL, holder, sizeof(holder), "UPDATE 'characters' SET posx = '%f', posy = '%f', posz = '%f', posa = '%f' WHERE charname = '%e'", x, y, z, a, GetPlayerNameEx(playerid));
    mysql_tquery(MySQL, holder);

    // Other stuff
    mysql_format(MySQL, holder, sizeof(holder), "UPDATE 'characters' SET gender = %i, age = %i, skin = %i, cash = %i, admin = %i, helper = %i WHERE charname = '%e'", AccountInfo[playerid][pGender], AccountInfo[playerid][pAge], AccountInfo[playerid][pSkin], GetPlayerNameEx(playerid));
    mysql_tquery(MySQL, holder);
}