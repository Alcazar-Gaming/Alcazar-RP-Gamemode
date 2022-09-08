new SV_GSTREAM:factionstream[MAX_FACTIONS] = { SV_NULL, ... };

FAC_VoiceDefine(factionid)
{
    factionstream[factionid] = SvCreateGStream(0xffff0000, "Faction Radio");
}

FAC_OnPlayerActivationKeyPress(SV_UINT:playerid, SV_UINT:keyid)
{
    if(PlayerInfo[playerid][pFactionRadio] == 1)
    {
    	if(keyid == 0x52 && factionstream[PlayerInfo[playerid][pFaction]]) SvAttachSpeakerToStream(factionstream[PlayerInfo[playerid][pFaction]], playerid);
    }
}

FC_OnPlayerActivationKeyRelease(SV_UINT:playerid, SV_UINT:keyid)
{
    if(PlayerInfo[playerid][pFactionRadio] == 1)
    {
    	if(keyid == 0x52 && factionstream[PlayerInfo[playerid][pFaction]]) SvDetachSpeakerFromStream(factionstream[PlayerInfo[playerid][pFaction]], playerid);
    }
}