

WAL_OnPlayerActivationKeyPress(SV_UINT:playerid, SV_UINT:keyid)
{
    if(PlayerInfo[playerid][pWalkieTalkie])
    {
        // keyid R
    	if(keyid == 0x52 && walkiestream[PlayerInfo[playerid][pChannel]]) SvDetachSpeakerFromStream(walkiestream[PlayerInfo[playerid][pChannel]], playerid);
    }
}

WL_OnPlayerActivationKeyRelease(SV_UINT:playerid, SV_UINT:keyid)
{
    if(PlayerInfo[playerid][pWalkieTalkie] == 1)
    {
        // keyid R
    	if(keyid == 0x52 && walkiestream[PlayerInfo[playerid][pChannel]]) SvDetachSpeakerFromStream(walkiestream[PlayerInfo[playerid][pChannel]], playerid);
    }
}