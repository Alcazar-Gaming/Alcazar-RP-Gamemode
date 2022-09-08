new Characters[MAX_PLAYERS][3][MAX_PLAYER_NAME + 1];

OnCharacterSelect(playerid, id)
{
    pData[playerid][pCharacter] = id;
    if(!Characters[playerid][id - 1][0])
    {
        return 
    }
}