enum charInfo
{
    charName[MAX_PLAYER_NAME],
    Float:charPosX,
    Float:charPosY,
    Float:charPosZ,
    Float:charPosA,

    charGender,
    charAge,
    charSkin,
	charCash,

    // Bind
    charBind1[128],
	charBind2[128],
	charBind3[128],
	charBind4[128],
	charBind5[128],
	charBind6[128],
	charBind7[128],
	charBind8[128],
	charBind9[128],
	charBind10[128],
	charBindCommand1[20],
	charBindCommand2[20],
	charBindCommand3[20],
	charBindCommand4[20],
	charBindCommand5[20],
	charBindCommand6[20],
	charBindCommand7[20],
	charBindCommand8[20],
	charBindCommand9[20],
	charBindCommand10[20],

    charAdmin,
    charHelper
}
//new CharacterInfo[MAX_PLAYERS+1][3][charInfo];

new PlayerCharacters[MAX_PLAYERS][3][MAX_PLAYER_NAME + 1];