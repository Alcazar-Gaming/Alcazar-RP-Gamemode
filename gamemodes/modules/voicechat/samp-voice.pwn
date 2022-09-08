#define MAX_FREQUENCY           200

new SV_GSTREAM:gstream = SV_NULL;
new SV_LSTREAM:lstream[MAX_PLAYERS] = { SV_NULL, ... };
new SV_GSTREAM:factionstream[MAX_FACTIONS] = { SV_NULL, ... };
new SV_GSTREAM:walkiestream[MAX_FREQUENCY] = { SV_NULL, ... };
new SV_GSTREAM:callstream[MAX_PLAYERS] = { SV_NULL, ... };
new AdminVC[MAX_PLAYERS];

public SV_VOID:OnPlayerActivationKeyPress(SV_UINT:playerid, SV_UINT:keyid)
{
    if(IsPlayerAndroid(playerid))
    {
        //Faction
        if(pData[playerid][pFactionRadio] == 1)
        {
            if(keyid == 0x5A && factionstream[pData[playerid][pFaction]]) SvAttachSpeakerToStream(factionstream[pData[playerid][pFaction]], playerid);
        }
        // Walkie Talkie
        if(pData[playerid][pWalkieVoice] == 1)
        {
            // keyid R
            if(keyid == 0x5A && walkiestream[pData[playerid][pChannel]]) SvAttachSpeakerToStream(walkiestream[pData[playerid][pChannel]], playerid);
        }
        // Call
        if(pData[playerid][pCallStage] == 2)
        {
            if (keyid == 0x5A && callstream[playerid]) SvAttachSpeakerToStream(callstream[playerid], playerid);
        }
    }
    else
    {
        //Faction
        if(pData[playerid][pFactionRadio] == 1)
        {
            if(keyid == 0x52 && factionstream[pData[playerid][pFaction]]) SvAttachSpeakerToStream(factionstream[pData[playerid][pFaction]], playerid);
        }
        // Walkie Talkie
        if(pData[playerid][pWalkieTalkie])
        {
            // keyid R
            if(keyid == 0x52 && walkiestream[pData[playerid][pChannel]]) SvAttachSpeakerToStream(walkiestream[pData[playerid][pChannel]], playerid);
        }
        // Call
        if(pData[playerid][pCallStage] == 2)
        {
            if (keyid == 0x42 && callstream[playerid]) SvAttachSpeakerToStream(callstream[playerid], playerid);
        }
    }
	if(AdminVC[playerid] == 1)
	{
		if (keyid == 0x47 && gstream) SvAttachSpeakerToStream(gstream, playerid);
	}
    else if(pData[playerid][pLocalVoice] == 1)
    {
    	if (keyid == 0x5A && lstream[playerid]) SvAttachSpeakerToStream(lstream[playerid], playerid);
    }
    // Anticheat
    if(keyid == 0x7B) // disabled f12 counter for s0beit & sobfox user
    {
        if(!pData[playerid][pAdmin])
        {
            KickPlayer(playerid);
            SCM(playerid, COLOR_LIGHTRED, "[!] "RED"[Cheat Warning]"WHITE" You've been kicked triggering f12 key!");
            SAM(COLOR_LIGHTRED, "[!] "RED"[Cheat Warning]"WHITE" %s has been kicked triggering f12 key!", GetRPName(playerid));
        }
    }
    if(keyid == 0x79) // disabled f10 counter for aimbot user
    {
        if(!pData[playerid][pAdmin])
        {        
            KickPlayer(playerid);
            SCM(playerid, COLOR_LIGHTRED, "[!] "RED"[Cheat Warning]"WHITE" You've been kicked triggering f10 key!");
            SAM(COLOR_LIGHTRED, "[!] "RED"[Cheat Warning]"WHITE" %s has been kicked triggering f10 key!", GetRPName(playerid));
        }
    }
}

public SV_VOID:OnPlayerActivationKeyRelease(SV_UINT:playerid, SV_UINT:keyid)
{
    if(IsPlayerAndroid(playerid))
    {
        if(pData[playerid][pFactionRadio] == 1)
        {
            if(keyid == 0x5A && factionstream[pData[playerid][pFaction]]) SvDetachSpeakerFromStream(factionstream[pData[playerid][pFaction]], playerid);
        }
        // Walkie
        if(pData[playerid][pWalkieTalkie] == 1)
        {
            if(keyid == 0x5A && walkiestream[pData[playerid][pChannel]]) SvDetachSpeakerFromStream(walkiestream[pData[playerid][pChannel]], playerid);
        }
        //Call
        if(pData[playerid][pCallStage] == 2)
        {
            if (keyid == 0x5A && callstream[playerid]) SvDetachSpeakerFromStream(callstream[playerid], playerid);
        }
    }
    else
    {
        if(pData[playerid][pFactionRadio] == 1)
        {
            // Key 'R'
            if(keyid == 0x52 && factionstream[pData[playerid][pFaction]]) SvDetachSpeakerFromStream(factionstream[pData[playerid][pFaction]], playerid);
        }
        // Walkie
        if(pData[playerid][pWalkieTalkie] == 1)
        {
            // keyid R
            if(keyid == 0x52 && walkiestream[pData[playerid][pChannel]]) SvDetachSpeakerFromStream(walkiestream[pData[playerid][pChannel]], playerid);
        }
        //Call
        if(pData[playerid][pCallStage] == 2)
        {
            // Key 'B'
            if (keyid == 0x42 && callstream[playerid]) SvDetachSpeakerFromStream(callstream[playerid], playerid);
        }
    }
	if(AdminVC[playerid] == 1)
	{
		if (keyid == 0x42 && gstream) SvDetachSpeakerFromStream(gstream, playerid);
	}
    else if(pData[playerid][pLocalVoice] == 1)
    {
    	if (keyid == 0x5A && lstream[playerid]) SvDetachSpeakerFromStream(lstream[playerid], playerid);
    }
}

VC_AddVCKey(playerid, type)
{
    if(type == 1)// key 'R'
    {
        SvAddKey(playerid, 0x52);
    }
    if(type == 2)// key 'B'
    {
        SvAddKey(playerid, 0x42);
    }
    if(type == 3) // Key G
    {
        SvAddKey(playerid, 0x47);
    }
}

VC_OnPlayerConnect(playerid)
{
    // Checking for plugin availability
    if (SvGetVersion(playerid) == SV_NULL)
    {
        SendClientMessage(playerid, -1, "Could not find plugin sampvoice.");
    }
    // Checking for a microphone
    else if (SvHasMicro(playerid) == SV_FALSE)
    {
        SendClientMessage(playerid, -1, "The microphone could not be found.");
    }
    // Create a local stream with an audibility distance of 40.0, an unlimited number of listeners
    // and the name 'Local' (the name 'Local' will be displayed in red in the players' speakerlist)
    else if ((lstream[playerid] = SvCreateDLStreamAtPlayer(20.0, SV_INFINITY, playerid, 0xff0000ff, "Local")))
    {
        SendClientMessage(playerid, COLOR_SAMP, "Initializing SA-MP Voice Plugins");
		SendClientMessage(playerid, COLOR_SAMP, "SA-MP Voicechat Loaded");
		SendClientMessage(playerid, COLOR_SAMP, "Microphone Setupped Already");
        SvAddKey(playerid, 0x5A); // Key Z
        VC_AddVCKey(playerid, 1);
        VC_AddVCKey(playerid, 2);
        VC_AddVCKey(playerid, 3);
    }
	SendClientMessage(playerid, COLOR_SAMP, "Connecting to game please wait a moment...");
	SendClientMessage(playerid, COLOR_SAMP, "You are now connected to the game!");
	//SendClientMessage(playerid, COLOR_SAMP, "Establishing connection to the "SVRCLR""SERVER_NAME" {A9C4E4}please wait a moment...");
}

VC_OnPlayerDisconnect(playerid)
{
    if (lstream[playerid])
    {
        SvDeleteStream(lstream[playerid]);
        lstream[playerid] = SV_NULL;
    }
}

VC_OnGameModeInit()
{
    gstream = SvCreateGStream(0xffff0000, "Global");
}

VC_OnGameModeExit()
{
    if (gstream) SvDeleteStream(gstream);
}

FAC_VoiceDefine(factionid, color)
{
    factionstream[factionid] = SvCreateGStream(color, "Faction Radio");
}

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
    callstream[playerid] = SvCreateGStream(0xFAE807FF, "Call");
	callstream[pData[playerid][pCallLine]] = SvCreateGStream(0xFAE807FF, "Call");
	SvAttachListenerToStream(callstream[pData[playerid][pCallLine]], playerid);
	SvAttachListenerToStream(callstream[playerid], pData[playerid][pCallLine]);
}