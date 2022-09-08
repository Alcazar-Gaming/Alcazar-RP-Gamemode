

HangupVoiceCall(playerid, callerid)
{
    if(callstream[callerid])
    {
        SvDeleteStream(callstream[callerid]);
    }
    if(callstream[playerid])
    {
        SvDeleteStream(callstream[playerid]);
    }
}

CALL_VoicePickup(playerid)
{
    callstream[playerid] = SvCreateGStream(0xffff0000, "Call");
	callstream[PlayerInfo[playerid][pCallLine]] = SvCreateGStream(0xffff0000, "Call");
	SvAttachListenerToStream(callstream[PlayerInfo[playerid][pCallLine]], playerid);
	SvAttachListenerToStream(callstream[playerid], PlayerInfo[playerid][pCallLine]);
}

CALL_OnPlayerActivationKeyPress(SV_UINT:playerid, SV_UINT:keyid)
{
    if(PlayerInfo[playerid][pCallStage] == 2)
    {
    	if (keyid == 0x42 && callstream[playerid]) SvAttachSpeakerToStream(callstream[playerid], playerid);
    }
}

CL_OnPlayerActivationKeyRelease(SV_UINT:playerid, SV_UINT:keyid)
{
    if(PlayerInfo[playerid][pCallStage] == 2)
    {
    	if (keyid == 0x42 && callstream[playerid]) SvDetachSpeakerFromStream(callstream[playerid], playerid);
    }
}