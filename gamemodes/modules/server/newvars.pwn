/*
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/
/                                        SSSSSSSSSSSSSSSSSSSSSS
/									     SSSSSSSSSSSSSSSSSSSSSS
/							             SSSSSSSSSSSSSSSSSSSSSS
/                                        SSSSSS
/                                        SSSSSS
/                                        SSSSSS
/							             SSSSSSSSSSSSSSSSSSSSSS
/						                 SSSSSSSSSSSSSSSSSSSSSS
/							             SSSSSSSSSSSSSSSSSSSSSS
/                                                        SSSSSS
/							            	             SSSSSS
/							                             SSSSSS
/			   			                 SSSSSSSSSSSSSSSSSSSSSS
/							             SSSSSSSSSSSSSSSSSSSSSS
/							             SSSSSSSSSSSSSSSSSSSSSS
/
/											Alcazar City
/                      	   		____ ______    ____ ___  _    ____ _   _
/				                 |__/ |  | |    |___ |__] |    |__|  \_/
/				                 |  \ |__| |___ |___ |    |___ |  |   |
/
/
/                                 Pawn File: Variables
/                                 Module Folder: Server
/
/                               Module Created by:
/	                        		Stewart - Stewart#8221 - Alcazar City Roleplay
/
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
*/

#define SERVER_COLOR  		0xF16481ff
#define FACTION_DUTY        0xeee8aaff
//#define SVRCLR       		"{00AA00}"
#define SVRCLR              "{F5DEB3}"
//#define TEAL				"{00AAAA}"
#define TEAL				"{00AA00}"
#define WHITE				"{FFFFFF}"
#define GLOBAL              "{B8FFBC}"
#define GREY				"{AFAFAF}"
#define RED					"{FF0000}"
#define BLUE 				"{233EFA}"
#define LIME                "{B7FF00}"
#define GREEN				"{3dcc3f}"
#define ORANGE				"{FF9900}"
#define YELLOW              "{FFD200}"
#define TWEET               "{0099ff}"
#define LIGHTRED     		"{FF6347}"
#define BUSINESS 			0x7FAD35FF
#define COLOR_OOC 			0xE0FFFFAA

#define SERVER_MUSIC_URL ""SERVER_URL"/music"
#define SERVER_FETCH_URL ""SERVER_URL"/music"

// --- Function Shortcuts --- //
#define SCM 	SendClientMessage
#define SendInfoMessage(%0,%1)   SendClientMessageEx((%0), COLOR_WHITE, ""%1)
#define SCMA 	SendClientMessageToAll
#define SCMf 	SendClientMessageFormatted // SendClientMessage with string formats
#define SCMAf	SendClientMessageToAllFormatted // SendClientMessageToAll with string formats
#define SM 		SendMessage // SendClientMessage with string formats
#define SMA 	SendMessageToAll // SendClientMessageToAll with string formats
#define SAM 	SendAdminMessage // with string formats

// Model Selection
#define MODEL_SELECTION_FURNITURE 	1
#define MODEL_SELECTION_CLOTHING    2
#define MODEL_SELECTION_CLOTHES     3
#define MODEL_SELECTION_COPCLOTHING 4
#define MODEL_SELECTION_VEHICLES    5
#define MODEL_SELECTION_NEWBIE		6
#define MODEL_SELECTION_VEHICLES1   7
#define MODEL_SELECTION_LANDOBJECTS 8

// Defines //
#define HOUSE_COLOR			0xB2FF8EFF
#define HOUSE				"{B2FF8E}"
#define BIZ_COLOR			0x84a9ffFF
#define BIZ					"{84a9ff}"

#define COLOR_DISPATCH 		0xff4419ff
#define COLOR_WHITE 		0xFFFFFFFF
#define COLOR_SYNTAX        0xAFAFAFFF
#define COLOR_YELLOW    	0xFFFF00FF
#define COLOR_YELLOW2       0xF5DEB3FF
#define COLOR_LIGHTORANGE   0xF7A763FF
#define COLOR_AQUA        	0xCCFFFFFF
#define COLOR_LIGHTAQUA     0x33CCFFFF
#define COLOR_NEWS 			0xFFA500AA
#define COLOR_GREEN         0x32CD32FF
#define COLOR_GREY          0xAFAFAFFF
#define	COLOR_GREY1    		0xE6E6E6FF
#define COLOR_GREY2 		0xC8C8C8FF
#define COLOR_GREY3 		0xAAAAAAFF
#define COLOR_GREY4 		0x8C8C8CFF
#define COLOR_GREY5 		0x6E6E6EFF
#define COLOR_LIGHTRED      0xFF6347FF
#define COLOR_ORANGE        0xFF9900FF
#define COLOR_RED           0xAA3333FF
#define COLOR_LIME 			0xB7FF00AA
#define COLOR_RCRPOOC 		0x003d75FF
#define COLOR_HUNT          0xFF42CFFF
#define COLOR_PURPLE        0xC2A2DAFF
#define COLOR_NEWBIE        0x7DAEFFFF
#define COLOR_BLUE          0x233EFAFF
#define COLOR_ROYALBLUE     0x9999FFFF
#define COLOR_DOCTOR        0xFF8282FF
#define COLOR_DARKGREEN     0x00AA00FF
#define COLOR_VIP           0x6a86b5FF
#define COLOR_WALKIETALKIE  0xB2EBE0FF
#define COLOR_GLOBAL 		0xB8FFBCFF
#define COLOR_STATS         0xFFFF91AA
#define COLOR_LIGHTGREEN    0x74AF7AFF
#define COLOR_ADMINCHAT     0xED6464FF
#define COLOR_SAMP          0xA9C4E4FF
#define COLOR_GENERAL3		0x00D900C8
#define COLOR_TEAL 			0x00AAAAAA
#define COLOR_OFFWHITE 		0xF5DEB3AA
#define COLOR_DARKAQUA 		0x83BFBFAA
#define COLOR_REALRED       0xFF0000FF
#define COLOR_FAMILYCHAT    0x00FC50FF
#define COLOR_FACTIONCHAT  	0xFC4900FF
// ---------------------------------------
#define MAX_SZ                      50
#define MAX_LABELS                  50
#define MAX_TPS   					50
#define MAX_IMPOUNDLOC              50
#define MAX_LISTED_NUMBERS          50
#define MAX_LISTED_OBJECTS          100
#define MAX_LISTED_STATIONS         50
//#define MAX_ANTICHEAT_WARNINGS   	18
#define MAX_SPLIT_LENGTH            70
// ---------------------------------------
#define MAX_LANDS               	50
#define MAX_ATMS                    50
#define MAX_SAFEZONES               50
#define MAX_DYNAMICACTORS           50
#define MAX_VENDORS                 50
#define MAX_MDC                     50
#define MAX_BAR	                    50
#define MAX_PGARAGE                 85
#define MAX_SURGERY                 50
#define MAX_REPORTS         		50
#define MAX_HOUSES          		1500
#define MAX_CCTVS 					100
#define MAX_CCTVMENUS 				10  // This number should be MAX_CCTVS divided by 10
#define MAX_GARAGES         		1000
#define MAX_BUSINESSES      		200
#define MAX_ENTRANCES       		500
#define MAX_SPAWNED_VEHICLES        5
#define MAX_SPEED_CAMERAS           50
#define MAX_GATES					200
#define MAX_MAPOBJECTS				1000
#define MAX_PLAYER_CLOTHING     	10
#define MAX_ANTICHEAT_WARNINGS   	5
#define MAX_FACTIONS                20
#define MAX_LOCKERS					100
#define MAX_FACTION_RANKS           20
#define MAX_FACTION_SKINS           15
#define MAX_FACTION_DIVISIONS       20
#define MAX_DEPLOYABLES             50
#define MAX_FIRES                   100
#define MAX_GANGS                   20
#define MAX_GANG_SKINS              10
#define MAX_POINTS                  15
#define MAX_TURFS                   150
#define MAX_BANK_ROBBERS            7
#define MAX_GRAFFITI_POINTS         200
// ---------------------------------------
#define THREAD_LOOKUP_BANS          1
#define THREAD_LOOKUP_ACCOUNT    	2
#define THREAD_ACCOUNT_REGISTER     3
#define THREAD_PROCESS_LOGIN        4
#define THREAD_COUNT_FLAGS          5
#define THREAD_TRACE_IP             6
#define THREAD_LIST_CHANGES         8
#define THREAD_LIST_HELPERS         9
#define THREAD_LOAD_HOUSES          10
#define THREAD_LIST_TENANTS         11
#define THREAD_LIST_VERIFIED        12
#define THREAD_LOAD_GARAGES         13
#define THREAD_LOAD_BUSINESSES      14
#define THREAD_LOAD_ENTRANCES       15
#define THREAD_LOAD_CLOTHING        16
#define THREAD_LOAD_FACTIONS        17
#define THREAD_LOAD_FACTIONRANKS    18
#define THREAD_LOAD_FACTIONSKINS    19
#define THREAD_LOAD_FACTIONPAY      20
#define THREAD_LOAD_DIVISIONS       21
#define THREAD_LOAD_LANDS           22
#define THREAD_LOAD_LANDOBJECTS     23
#define THREAD_LOAD_GANGS           24
#define THREAD_LOAD_GANGRANKS       25
#define THREAD_LOAD_GANGSKINS       26
#define THREAD_LOAD_POINTS          27
#define THREAD_LOAD_TURFS           28
#define THREAD_HOUSE_INFORMATION    29
#define THREAD_COUNT_TEXTS          33
#define THREAD_VIEW_TEXTS           34
#define THREAD_LIST_VEHICLES        35
#define THREAD_FACTION_ROSTER       36
#define THREAD_GANG_ROSTER          37
#define THREAD_VIEW_PHONEBOOK       38
#define THREAD_COUNT_LANDOBJECTS    39
#define THREAD_SELL_LANDOBJECT      40
#define THREAD_DUPLICATE_LANDOBJECT 41
#define THREAD_DUPLICATED_OBJECT    42
#define THREAD_CLEAR_LANDOBJECTS    43
#define THREAD_LIST_LANDOBJECTS     44
#define THREAD_LAND_INFORMATION     45
#define THREAD_LOAD_VEHICLES        46
#define THREAD_GANG_INFORMATION     47
#define THREAD_OFFLINE_IP           48
#define THREAD_CHECK_REFERRAL       49
#define THREAD_REWARD_REFERRER      50
#define THREAD_LIST_FLAGGED         51
#define THREAD_CAR_STORAGE          52
#define THREAD_LAND_MAINMENU        53
#define THREAD_LIST_ADMINS	        54
#define	THREAD_DMVRELEASE			55
#define THREAD_SELECT_CODE			56
#define	THREAD_LOAD_ATMS            59
#define THREAD_LOAD_VENDORS         60
#define THREAD_LOAD_LOCKERS			61
#define THREAD_LOAD_BAR		        62
#define THREAD_LOAD_PGARAGE         63
#define THREAD_LOAD_SURGERY         64
#define THREAD_BUYPARTS				65
#define THREAD_LOAD_MDC             66
#define THREAD_LOAD_FURNITURE       67
#define THREAD_COUNT_FURNITURE     	68
#define THREAD_SELL_FURNITURE       69
#define THREAD_CLEAR_FURNITURE      70
#define	THREAD_LOAD_SAFEZONES       71
#define THREAD_LOAD_ACTORS          72
#define THREAD_LOAD_DEALERSHIPS     73
#define THREAD_LOAD_PUMPS           74

#define RED_TEAM    0
#define BLUE_TEAM   1
// ---------------------------------------
#define strcpy(%0,%1)   strcat(((%0[0] = 0), %0), %1)
#define percent(%0,%1)  floatround((float((%0)) / 100) * (%1))
#define Random(%0,%1)   (random((%1) - (%0)) + (%0))
// ---------------------------------------
//ANDROID
#define IsPlayerAndroid(%0)                 GetPVarInt(%0, "NotAndroid") == 0

native SendClientCheck(playerid, type, arg, offset, size);
forward OnClientCheckResponse(playerid, type, arg, response);
// ---------------------------------------

#undef SSCANF_Join
#undef SSCANF_Leave

// Tune System
#define COLOR_LIGHTBLUE 0x91C8FF//Server text messages
#define COLOR_GROUPTALK 0x87CEEBAA  // SKYBLUE
#define COLOR_MENU 0xFFFFFFAA		// WHITE (FFFFFF) menu's (/help)
#define COLOR_SYSTEM_PM 0x66CC00AA	// LIGHT GREEN
#define COLOR_SYSTEM_PW 0xFFFF33AA	// YELLOW


#define TYPE_TPLUMBERJACKRUNTIMER 3
//===========================[Firework]=========================================
#define RocketHeight 50
#define TYPE_COUNTDOWN 2000
#define TYPE_LAUNCH 2001
#define TYPE_EXPLODE 2002
#define MAX_FIREWORKS 100
#define FireworkSpread 30

new Rocket[MAX_PLAYERS];
new RocketLight[MAX_PLAYERS];
new RocketSmoke[MAX_PLAYERS];
new RocketExplosions[MAX_PLAYERS];
//==============================================================================

//servertd
new Text:SERVERTD[5];

new mobveh[6];

new pTazerReplace[MAX_PLAYERS];
new pTazerAmmo[MAX_PLAYERS];
new pBeanbagReplace[MAX_PLAYERS];
new pBeanbagAmmo[MAX_PLAYERS];


//Tutorial
new Text:TutorialNewbieTD[3];

//Vehicle Panel by Stewart
new PlayerText:VehiclePanelTD[MAX_PLAYERS][11];
//Restaurant Panel by Stewart


// CallingTD
new Text:CallingTD[13];
new PlayerText:CallingPlayerTD[MAX_PLAYERS][5];
new Text:CloseCallTD;
new Text:PICKUP;
new Text:HANGUP;
new PlayerText:SigncheckTD[MAX_PLAYERS][6];
// PHONE TEXTDRAWS
new Text:PhoneTD[20];
new Text:phoneclosetd;
new Text:mesaagetd;
new Text:contactstd;
new Text:calltd;
new Text:twittertd;
new Text:banktd;
new Text:musictd;
// Twitter App
new Text:TwitterApp[22];
new Text:addtexttd;
// PHONE TRANSFER
new Text:PhoneAtmTD[7];
new PlayerText:PhoneAtmPlayer[MAX_PLAYERS];
new Text:PhoneAtmExit;
new Text:PhoneAtmTransfer;

new bool:HeadShotSystem;
new Salary;
new DoubleSalary;

// NOTICE TEXTDRAW - TIYO
new Text:NoticeTxtdraw[4];

// Paintball
new PaintballTimer1, PaintballTimer2;
new pbscore1[MAX_PLAYERS] = 0;
new pbscore2[MAX_PLAYERS] = 0;

//CameraInfo
new PlayerText:customHUD[MAX_PLAYERS][3];
new TotalCCTVS;
new CameraName[MAX_CCTVS][32];
new Float:CCTVLA[MAX_PLAYERS][3];  //CCTV LookAt
new Float:CCTVLAO[MAX_CCTVS][3];
new Float:CCTVRadius[MAX_PLAYERS]; //CCTV Radius
new Float:CCTVDegree[MAX_PLAYERS] = 0.0;
new Float:CCTVCP[MAX_CCTVS][4]; //CCTV CameraPos
new CurrentCCTV[MAX_PLAYERS] = -1;
//TextDraw
new Text:TD;

///////////////[PRIORITY COOLDOWN BY WYNN]//////////////////////////////////////////////////////////
new Text:Textdraw2;
////////////////////////////////////////////////////////////////////////////////////////////////////

//Menus:
new Menu:CCTVMenu[MAX_CCTVMENUS];
new MenuType[MAX_CCTVMENUS];
new TotalMenus;
new PlayerMenu[MAX_PLAYERS];
enum LP
{
	Float:LX,
	Float:LY,
	Float:LZ,
	Float:LA,
	LInterior
}
new LastPos[MAX_PLAYERS][LP];
new KeyTimer[MAX_PLAYERS];
new VehicleObject[MAX_VEHICLES] = {-1, ...};


/*#if defined Christmas
	#else
		new CarolLyrics[MAX_PLAYERS] = 0;
#endif*/

new tsstring[2048], psstring[2048];
new Sliding[MAX_PLAYERS];
new PayCheckCode[MAX_PLAYERS];

// Anti CBUG
#define PRESSED(%0) (((newkeys & (%0)) == (%0)) && ((oldkeys & (%0)) != (%0)))
new bool:pCBugging[MAX_PLAYERS];
new ptmCBugFreezeOver[MAX_PLAYERS];
new ptsLastFiredWeapon[MAX_PLAYERS];

/*new pRobHouse[MAX_PLAYERS] = 0;
new robHouseTimer[MAX_PLAYERS];*/
// Fixed /RELOG CMD
new ReconnectIP[MAX_PLAYERS][32];
new bool: Reconnecting[MAX_PLAYERS];
#define MAX_IP_SIZE 32

new gScriptObject[MAX_OBJECTS char];
new Toll = 1;
new Border3;
new Border33;
new Border333;
new Border4;
new Border44;
new Border444;
new Border1;
new Border11;
new Border111;
new Border2;
new Border22;
new Border222;
new Border5;
new Border55;
new Border555;
new Border6;
new Border66;
new Border666;
new Border7;
new Border77;
new Border777;
new Border8;
new Border88;
new Border888;
new Border9;
new Border99;
new Border999;
new Border0;
new Border00;
new Border000;

// Speedo

//new PlayerText:ModernPlayerText[MAX_PLAYERS][2];
new PlayerText:DyuzeeeTD[MAX_PLAYERS][2];

// Actor Job Represent
new ActorJob[13];
//	 ManagementActor[3],
//		YoutuberActor[4],
//		VanActor[3];

// Blood Effects
new Text:Blood[9];
new Timer[MAX_PLAYERS];
new bool:pBlood[MAX_PLAYERS] = {false,...};

// Tutorial8
// Login Textdraws
//new Text:LogoTD[3];

// Callsigns
new Text3D:vehicleCallsign[MAX_VEHICLES] = {Text3D:INVALID_3DTEXT_ID, ...};

// Label
new Text3D:PlayerLabel[MAX_PLAYERS];
new Text3D:InjuredLabel[MAX_PLAYERS];

// VIP Callsigns
new Text3D:DonatorCallSign[MAX_VEHICLES] = {Text3D:INVALID_3DTEXT_ID, ...};

// Car windows
new CarWindows[MAX_VEHICLES] = 0;

// Quiz System
new quizQuestion[72];
new quizAnswer[32];
new CreateQuiz = -1;
new tweet[60];
// Seatbelt
new ExBJck[MAX_PLAYERS];

// ELM Lights
new Flasher[MAX_VEHICLES] = 0;
new FlasherState[MAX_VEHICLES];
new FlashTimer;

// Mask System
new Maskara[MAX_PLAYERS];
new MaskaraID[MAX_PLAYERS] = 0;

// LUMBERJACK
new bool:lumberman[MAX_PLAYERS];
new Lumber1[MAX_PLAYERS] = 0;
new Lumbered[MAX_PLAYERS] = -1;
new LumberJacking[MAX_PLAYERS] = -1;

// Blindfold
new pBlind[MAX_PLAYERS] = 1; //
new Text:Blind;


new pData[MAX_PLAYERS + 1][pEnum];
new GraffitiData[MAX_GRAFFITI_POINTS][graffitiData];
new SpeedData[MAX_SPEED_CAMERAS][speedData];
new GateData[MAX_GATES][gateData];
new ObjectData[MAX_MAPOBJECTS][objectData];


// LoginRegister
new PlayerText:RegisterLoginTD[MAX_PLAYERS][15];



// Poll System
new PollVoted[MAX_PLAYERS];
new PollY;
new PollOn;
new PollN;

// PBounds
new pointboundaries[9];
new ShowingBounds[MAX_PLAYERS];

forward ServerTDCC();
public ServerTDCC()
{
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
        new Colorss[] = {0xFFC100FF, 0xFF9A00FF, 0xFF7400FF, 0xFF4D00FF, 0xFF0000FF};//Untuk warna yang diinginkan//Colors what you want
        TextDrawHideForPlayer(i,SERVERTD[3]);
        TextDrawColor(SERVERTD[3],Colorss[random(sizeof(Colorss))]);
        TextDrawShowForPlayer(i,SERVERTD[3]);
        SetTimer("TextdrawColorChange", 100, 0);
    }
}

forward pollend(playerid);
public pollend(playerid)
{
	new string[128];
    format(string, sizeof(string), "The Poll has ended, "WHITE"%d{FF6347} people voted "WHITE"No{FF6347}, "WHITE"%d{FF6347} people voted "WHITE"Yes{FF6347}.", PollN, PollY);
    SCMA(COLOR_LIGHTRED, string);
    PollOn = 0;
	return 1;
}

#define AUTO_MESSAGE_TIME 10 // Minutes between automatic messages
new AutoMessages[][] =
{
	"The "SERVER_NAME" staff will never ask you for your password.",
	"Bored? Have a round of Paintball at the Paintball Arena!",
	"Remeber the difference of /am and /report. /am = for bugs. /report = reporting a player.",
	"Remember! Want to be an admin be a helper through helping newbies in /n.",
	"We are not just a sa-mp community, don't forget to check our other projects at "SERVER_URL"!",
	"We have a full Helper staff waiting to help you! Use /requesthelp to communicate with them!",
	"Found a bug? Don't report it to our staff, please goto our bug forums at "SERVER_URL"",
	"Remember to read the rules, failure to do so may lead toward punishment or even a ban.",
	"Wait at least 5 minutes inbetween /reports, We work hard to get to everyone who reports.",
	"Want to make a suggestion? Our suggestions box is on our forums, submit away!",
	"If you get lost, be sure to take a look at the map~, in the Pause Menu.",
	"Dying to join a gang or faction? Be sure to roleplay with their leaders, or apply on the forums!",
	"Abusing newbie channel will result in mutes, frequent abuse will be punished with a ban.",
	"It's not nice to DM, it can also lead you to punishment or ban.",
	"Caught a player breaking the rules? Make a complaint on the forums, or simply /report it!"
};

forward AutoMessage();
public AutoMessage() {
	new string[128];
	format(string, sizeof(string), "%s", AutoMessages[random(sizeof(AutoMessages))]);
	SendClientMessageToAll(COLOR_LIGHTORANGE, string);
	return 1;
}

/*#if defined Christmas
	#else
	new PlayerText:EventTextdraw[MAX_PLAYERS];
#endif*/

new PlayerText:Speeddraw[MAX_PLAYERS][6];
new PlayerText:PlayerStatsTD[MAX_PLAYERS];
/////////////////////////////////////

new PlayerBar:ProgressfreeBar[MAX_PLAYERS][1];
new Text:AnimationTD;
new Text:TimeTD;
// Report Textdraw
new Text:ReportTD;
new Text:DieText;
new Text:InjuredText;
new Text:ANN[3];

// LoginTD By: STEWART
new Text:LoginTD[2];

//ATM TEXTDRAWS
new Text:ATMTD[7];
new PlayerText:SHOWID[MAX_PLAYERS][16];
new Text:withdrawtd;
new Text:deposittd;
new Text:transfertd;
new PlayerText:ATMTD2[MAX_PLAYERS][2];

// Capture Limit
new MaxCapCount[2] = {  2 , 1 };

new enabledAM = 1;
new enabledpurge = 0;
new enabledOOC;
new enabledNewbie = 1;
new enabledVip = 1;
new enabledGlobal = 1;
new enabledglobal = 0;
new enabledAdmin = 1;
new enabledReports = 1;
new pizzaVehicles[6];
new garbageVehicles[6];
new forkliftVehicles[6];
new towtruck[3];
new courierVehicles[12];
new taxiVehicles[4];
new testVehicles[9];
new adminMOTD[128], helperMOTD[128];
new gHour = 0, gWorldTime, gWeather = 2;
new gCharity, gCharityHealth, gCharityArmor;
new gPlayerRecord, gRecordDate[128], gServerMOTD[128], gTax, gVault, gAnticheatBans;
new gConnections, gTotalRegistered, gTotalKills, gTotalDeaths, gTotalHours;
new gDoubleXP;
new gLottoTimer, gDrawNumber, gLotto, LottoStarted;
new gLastAd;
new gListedItems[MAX_PLAYERS][100], gTargetName[MAX_PLAYERS][MAX_PLAYER_NAME];
new gFactionVC = 0;
new gLastSave;
new gLastFix;
new gAnticheat = 1;
new gParachutes[2];
new gSeedsStock = 500, gCrackStock = 500, gEphedrineStock = 500;
new Text3D:gSeedsStockText, Text3D:gCrackText , Text3D:gEphedrineStockText;
new gPrisonCells[24];
new gFires, gFireObjects[MAX_FIRES] = {INVALID_OBJECT_ID, ...}, Float:gFireHealth[MAX_FIRES];

new EventInfo[eventEnum];
new ChopInfo[chopEnum];
new RobInfo[robEnum];
new MarkedPositions[MAX_PLAYERS][3][mEnum];

new ReportInfo[MAX_REPORTS][rEnum];
new HouseInfo[MAX_HOUSES][hEnum];
new GarageInfo[MAX_GARAGES][gEnum];
new BusinessInfo[MAX_BUSINESSES][bEnum];
new EntranceInfo[MAX_ENTRANCES][eEnum];
new ClothingInfo[MAX_PLAYERS][MAX_PLAYER_CLOTHING][cEnum];
new VehicleInfo[MAX_VEHICLES][vEnum];
new LockerInfo[MAX_LOCKERS][lkEnum];
new FactionRanks[MAX_FACTIONS][MAX_FACTION_RANKS][32];
new FactionDivisions[MAX_FACTIONS][MAX_FACTION_DIVISIONS][32];
new DeployInfo[MAX_DEPLOYABLES][dEnum];
new LandInfo[MAX_LANDS][lEnum];
new GangRanks[MAX_FACTIONS][7][32];
new PointInfo[MAX_POINTS][ptEnum];
new TurfInfo[MAX_TURFS][tEnum];

new adminVehicle[MAX_VEHICLES char];
new vehicleFuel[MAX_VEHICLES] = {100, ...};
new vehicleSiren[MAX_VEHICLES] = {INVALID_OBJECT_ID, ...};
new vehicleStream[MAX_VEHICLES][128];
new vehicleColors[MAX_VEHICLES][2];
new bool:chattingWith[MAX_PLAYERS][MAX_PLAYERS char];

// ---------------------------------------

new const vehicleNames[212][] = {
    "Landstalker", "Bravura", "Buffalo", "Linerunner", "Perrenial", "Sentinel", "Dumper", "Firetruck", "Trashmaster",
    "Stretch", "Manana", "Infernus", "Voodoo", "Pony", "Mule", "Cheetah", "Ambulance", "Leviathan", "Moonbeam",
    "Esperanto", "Taxi", "Washington", "Bobcat", "Whoopee", "BF Injection", "Hunter", "Premier", "Enforcer",
    "Securicar", "Banshee", "Predator", "Bus", "Rhino", "Barracks", "Hotknife", "Article Trailer", "Previon", "Coach",
    "Cabbie", "Stallion", "Rumpo", "RC Bandit", "Romero", "Packer", "Monster", "Admiral", "Squalo", "Seasparrow",
    "Pizzaboy", "Tram", "Article Trailer 2", "Turismo", "Speeder", "Reefer", "Tropic", "Flatbed", "Yankee", "Caddy", "Solair",
    "Berkley's RC Van", "Skimmer", "PCJ-600", "Faggio", "Freeway", "RC Baron", "RC Raider", "Glendale", "Oceanic",
    "Sanchez", "Sparrow", "Patriot", "Quad", "Coastguard", "Dinghy", "Hermes", "Sabre", "Rustler", "ZR-350", "Walton",
    "Regina", "Comet", "BMX", "Burrito", "Camper", "Marquis", "Baggage", "Dozer", "Maverick", "News Chopper", "Rancher",
    "FBI Rancher", "Virgo", "Greenwood", "Jetmax", "Hotring", "Sandking", "Blista Compact", "Police Maverick",
    "Boxville", "Benson", "Mesa", "RC Goblin", "Hotring Racer A", "Hotring Racer B", "Bloodring Banger", "Rancher",
    "Super GT", "Elegant", "Journey", "Bike", "Mountain Bike", "Beagle", "Cropduster", "Stuntplane", "Tanker", "Roadtrain",
    "Nebula", "Majestic", "Buccaneer", "Shamal", "Hydra", "FCR-900", "NRG-500", "HPV1000", "Cement Truck", "Tow Truck",
    "Fortune", "Cadrona", "SWAT Truck", "Willard", "Forklift", "Tractor", "Combine", "Feltzer", "Remington", "Slamvan",
    "Blade", "Streak", "Freight", "Vortex", "Vincent", "Bullet", "Clover", "Sadler", "Firetruck", "Hustler", "Intruder",
    "Primo", "Cargobob", "Tampa", "Sunrise", "Merit", "Utility", "Nevada", "Yosemite", "Windsor", "Monster", "Monster",
    "Uranus", "Jester", "Sultan", "Stratum", "Elegy", "Raindance", "RC Tiger", "Flash", "Tahoma", "Savanna", "Bandito",
    "Freight Flat", "Streak Carriage", "Kart", "Mower", "Dune", "Sweeper", "Broadway", "Tornado", "AT-400", "DFT-30",
    "Huntley", "Stafford", "BF-400", "News Van", "Tug", "Petrol Trailer", "Emperor", "Wayfarer", "Euros", "Hotdog", "Club",
    "Freight Box", "Article Trailer 3", "Andromada", "Dodo", "RC Cam", "Launch", "LSPD Car", "SFPD Car", "LVPD Car",
    "Police Rancher", "Picador", "S.W.A.T", "Alpha", "Phoenix", "Glendale", "Sadler", "Luggage", "Luggage", "Stairs",
    "Boxville", "Tiller", "Utility Trailer"
};

new const weaponSlotIDs[] = {
	0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 10, 10, 10, 10, 10, 10, 8, 8, 8, 0,
	0, 0, 2, 2, 2, 3, 3, 3, 4, 4, 5, 5, 4, 6, 6, 7, 7, 7, 7, 8, 12,
	9, 9, 9, 11, 11, 11
};

new const weaponModelIDs[] = {
	0, 331, 333, 334, 335, 336, 337, 338, 339, 341, 321, 322, 323, 324,
	325, 326, 342, 343, 344, 0, 0, 0, 346, 347, 348, 349, 350, 351, 352,
	353, 355, 356, 372, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366,
	367, 368, 368, 371
};
new clothingRareSkins[] = {
	294, 34, 61, 99, 125, 127, 177, 233, 249, 261, 264
};
new clothesShopSkinsMale[] = {
	2,116,7,19,29,30,67,105,102,103,108,109,110,114,115
};
new clothesShopSkinsFemale[] = {
	12,13,40,51,55,56,64,69,93,169,192,195,211,216,224
};

/*new const clothesShopSkins[] = {
	1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
	20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37,
	38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55,
	56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73,
	75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92,
	93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108,
	109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123,
	124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138,
	139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153,
	154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168,
	169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183,
	184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198,
	199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 212, 213,
	214, 215,	 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228,
	229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243,
	244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258,
	259, 260, 261, 262, 263, 264, 268, 269, 270, 271, 272, 273,	
	289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303,
	304, 305, 306, 307, 308, 309, 310, 311
};*/


enum houseInt
{
	intClass[16],
	intPrice,
	intID,
	Float:intX,
	Float:intY,
	Float:intZ,
	Float:intA
};

new const houseInteriors[][houseInt] =
{ // 1-6 Apartment 7-9 Low Class 10-12 Med Class 13-16 Upper 17-19 Mansion 20 Custom House
    {"Apartment",    8000,   1,  244.1997, 305.0676, 999.1484, 270.2194},
	{"Apartment", 	 8000,   2,  1434.0806, -1832.7854, 1313.5573, 270.0000},
	{"Apartment", 	 12000,   10, 2259.7649, -1135.8751, 1050.6328, 270.0000},
	{"Apartment", 	 12000,   8,  2008.8319, -1698.8461, 1165.7001, 90.0000},
	{"Apartment", 	 15000,  5,  2233.6501, -1114.7767, 1050.8828, 0.0000},
	{"Apartment", 	 15000,  1,  2217.9814, -1076.2471, 1050.4844, 90.0000}, //1-6 Apartment 7-9 Low Class 10-12 Med Class 13-16 Upper 17-19 Mansion 20 Custom House
	{"Low Class", 	 800000,  9,  1178.3398, -419.0833, 1234.7045, 180.0000}, //7-9 Low Class
	{"Low Class", 	 820000,  3,  828.6323, -1014.0038, 799.9664, 270.0000},
	{"Low Class", 	 850000,  5,  1320.1091, -167.6174, 1088.0741, 90.0000},
	{"Medium Class", 1200000,  3,  1363.7614, -2145.6965, 1050.5886, 0.0000}, //10-12 Med Class
	{"Medium Class", 1400000,  5,  2654.4524, -1023.7827, 929.9266, 180.0000},
	{"Medium Class", 1600000,  11, 2184.1011, -1130.3905, 1128.7655, 270.0000},
	{"Upper Class",  2100000,  10, 2269.9143, -1210.5028, 1047.5625, 90.0000}, //13-16 Upper
	{"Upper Class",  2300000,  6,  1749.6356, -1822.4457, 1000.3405, 0.0000}, // 17-19
	{"Upper Class",  2500000,  12, 2324.3862, -1148.8784, 1050.7101, 0.0000}, // 20
	{"Upper Class",  2800000,  4,  1282.0646, -1140.2067, 980.0524, 0.0000},
	{"Mansion", 	 10000000,  1,  1834.2408, -1278.7684, 832.1602, 180.0000},
	{"Mansion", 	 12000000, 7,  925.0102, -496.8101, 843.8953, 90.0000},
	{"Mansion",      14000000, 5,  1298.8682, -796.2053, 1084.0078, 0.0000},
	{"Special Class",21000000, 0, 0.0, 0.0, 0.0, 0.0}
};

enum garageInt
{
	intName[16],
	intPrice,
	intID,
	Float:intPX,
	Float:intPY,
	Float:intPZ,
	Float:intPA,
	Float:intVX,
	Float:intVY,
	Float:intVZ,
	Float:intVA
};

new const garageInteriors[][garageInt] =
{
    {"Small", 	100000,  1,  1521.2797, -1639.7163, 1124.5045, 180.0000,  1516.8326, -1643.9105, 1124.3364, 180.0000},
	{"Medium", 	125000,  2,  1520.6278, -1639.7173, 1374.5045, 180.0000,  1514.9481, -1644.1083, 1374.3365, 180.0000},
	{"Large", 	250000,  3,  1672.8816, -2363.5818, 1535.4829, 90.0000,   1660.5437, -2362.9001, 1535.2944, 0.0000}
};

enum bizInt
{
	intType[24],
	intPrice,
	intID,
	Float:intX,
	Float:intY,
	Float:intZ,
	Float:intA
};
enum furnitureEnum
{
	fCategory[24],
    fName[32],
    fModel,
    fPrice
};
new const furnitureCategories[][] =
{
	{"Appliances"},
	{"Bathroom"},
	{"Bedroom"},
	{"Carpets"},
	{"Kitchen"},
	{"Tables"},
	{"Chairs"},
	{"Posters/Frames"},
	{"Storage"},
	{"Plants"},
	{"Trash"},
	{"Doors & gates"},
	{"Walls"},
	{"Decor"},
	{"Effect"},
	{"Special"},
	{"Graffiti"},
	{"Misc"}
};

new const furnitureArray[][furnitureEnum] =
{
	{"Appliances", 		"Blender", 					 19830,  1000},
	{"Appliances", 		"Coffee machine",            11743,  1000},
	{"Appliances", 		"Grill",     				 19831,  1000},
	{"Appliances", 		"Electrical outlet", 		 19813,  550},
	{"Appliances", 		"Light switch",      		 19829,  550},
	{"Appliances", 		"Keyboard",          		 19808,  550},
	{"Appliances", 		"White telephone",   		 19807,  550},
	{"Appliances", 		"Black telephone",   		 11705,  550},
	{"Appliances", 		"Large LCD television",  	 19786,  1000},
    {"Appliances", 		"Small LCD television",  	 19787,  7550},
    {"Appliances", 		"Round gold TV", 			 2224,   11000},
    {"Appliances", 		"TV on wheels",  			 14532,  2550},
    {"Appliances", 		"Flat screen TV",        	 1792,   400},
    {"Appliances",      "Wide screen TV",        	 1786,   400},
    {"Appliances",      "Surveillance TV",       	 1749,   400},
    {"Appliances",      "Regular TV",            	 1518,   2550},
    {"Appliances",      "Grey sided TV",         	 2322,   200},
    {"Appliances",      "Wood sided TV",         	 1429,   200},
    {"Appliances",      "Microwave",             	 2149,   800},
    {"Appliances",      "Pizza rack",            	 2453,   550},
    {"Appliances",      "Wide sprunk fridge",  		 2452,   800},
    {"Appliances",      "Small sprunk fridge",   	 2533,   550},
    {"Appliances",      "Duality game",        		 2779,   1000},
    {"Appliances",      "Bee Bee Gone game",   		 2778,   1000},
    {"Appliances",      "Space Monkeys game",    	 2681,   1000},
    {"Appliances",      "Sprunk machine",        	 1775,   1000},
    {"Appliances",      "Candy machine",         	 1776,   1000},
    {"Appliances",      "Water machine",         	 1808,   800},
    {"Appliances",      "Radiator",              	 1738,   550},
    {"Appliances",      "Metal fridge",          	 1780,   800},
    {"Appliances",      "Pizza cooker",         	 2426,   550},
    {"Appliances",      "Deep fryer",            	 2415,   800},
    {"Appliances",      "Soda dispenser",        	 2427,   800},
    {"Appliances",      "Aluminum stove",        	 2417,   800},
    {"Appliances",      "Lamp",                  	 2105,   550},
    {"Appliances",      "Diagnostic machine",    	 19903,  4000},
    {"Appliances",      "VHS player",            	 1785,   200},
    {"Appliances",      "Playstation console",   	 2028,   1000},
    {"Appliances",      "Retro gaming console",  	 1718,   1000},
    {"Appliances",      "Hi-Fi speaker",         	 1839,   2550},
    {"Appliances",      "Black subwoofer",       	 2232,   2550},
    {"Appliances",      "Subwoofer",             	 1840,   2550},
    {"Appliances",      "Small black speaker",   	 2229,   2550},
    {"Appliances",      "Speaker on a stand",    	 2233,   800},
    {"Appliances",      "Speaker & stereo system",   2099,   1000},
	{"Appliances",      "Surveillance camera",   	 1886,   550},
	{"Appliances",      "Security camera",       	 1622,   550},
	{"Appliances",      "Exercise bike",         	 2630,   1000},
	{"Appliances",      "Treadmill",             	 2627,   1000},
	{"Appliances",      "Lift bench",            	 2629,   2550},
    {"Appliances",		"Pull up machine",       	 2628,   1000},
    {"Appliances", 		"White turntable",           1954,   1000},
    {"Bathroom",   		"Toilet",                	 2514,   2550},
    {"Bathroom",   		"Bathtub",               	 2519,   1000},
    {"Bathroom",   		"Toilet paper",          	 19873,  550},
    {"Bathroom",        "Towel rack",                11707,  800},
    {"Bathroom",   		"Toilet with rug",       	 2528,   1000},
	{"Bathroom",   		"Toilet with rolls",     	 2525,   1000},
	{"Bathroom",   		"Sink top",              	 2515,   800},
	{"Bathroom",   		"Dual sink top",         	 2150,   200},
	{"Bathroom",   		"Wood sided bathtub",    	 2526,   1000},
	{"Bathroom",   		"Sprunk bathtub",        	 2097,   1000},
	{"Bathroom",  		"Shower curtains",       	 14481,  800},
	{"Bathroom",   		"Metal shower cabin",    	 2520,   1000},
	{"Bathroom",   		"Glass shower cabin",    	 2517,   1000},
	{"Bathroom",   		"Shower with curtains",  	 2527,   1000},
	{"Bathroom",   		"Wall sink",             	 2518,   2550},
	{"Bathroom",   		"Plain sink",            	 2739,   2550},
	{"Bathroom",   		"Sink with extra soap",  	 2524,   2550},
	{"Bathroom",   		"Sink with rug",         	 2523,   2550},
	{"Bathroom",   		"Industrial sink",       	 11709,  1000},
	{"Bedroom",    		"Prison bed",            	 1800,   800},
	{"Bedroom",   		"Folding bed",           	 1812,   800},
	{"Bedroom",    		"Red double bed",        	 11720,  1000},
	{"Bedroom",    		"Wood double bed",       	 14866,  1000},
	{"Bedroom",   	 	"Double plaid bed",      	 1794,   1000},
	{"Bedroom",    		"Brown bed",        		 2229,   1000},
	{"Bedroom",    		"Blue striped bed", 		 2302,   1000},
	{"Bedroom",    		"Dark blue striped bed", 	 2298,   1000},
	{"Bedroom",    		"White striped bed",     	 2090,   1000},
	{"Bedroom",    		"Bed with cabinet",      	 2300,   1000},
	{"Bedroom",    		"Pink & blue striped bed", 	 2301,   1000},
	{"Bedroom",    		"Zebra print bed",       	 14446,  1000},
	{"Bedroom",    		"Low striped bed",  		 1795,   1000},
	{"Bedroom",    		"Low dark striped bed",      1798,   1000},
	{"Bedroom",    		"Single plaid bed",      	 1796,   1000},
	{"Bedroom",    		"Plain striped mattress",    1793,   1000},
	{"Bedroom",    		"Silk sheeted bed",          1701,   1000},
	{"Bedroom",    		"Framed striped bed",        1801,   1000},
	{"Bedroom",    		"Framed brown bed",          1802,   1000},
	{"Bedroom",    		"Wooden cabinet",            2330,   2550},
	{"Bedroom",    		"Cabinet with TV",           2296,   1000},
	{"Bedroom",    		"Dresser",               	 1416,   2550},
	{"Bedroom",    		"Small dresser",             2095,   2550},
	{"Bedroom",    		"Medium dresser",            1743,   2550},
	{"Bedroom",    		"Wide dresser",              2087,   2550},
	{"Bedroom",    		"Small wardrobe",            2307,   2550},
	{"Bedroom",    		"Huge open wardrobe",        14556,  1000},
	{"Bedroom",    		"Busted cabinet",            913,    1000},
	{"Bedroom",    		"Busted dresser",            911,    2550},
	{"Bedroom",    		"Dresser with no drawers",   912,    800},
	{"Carpets",    		"Rockstar carpet",           11737,  2550},
    {"Carpets",    		"Plain red carpet",          2631,   2550},
    {"Carpets",    		"Plain green carpet",        2632,   2550},
    {"Carpets",    		"Patterned carpet",          2842,   2550},
    {"Carpets",    		"Zig-zag patterned carpet",  2836,   2550},
    {"Carpets",    		"Brown red striped carpet",  2847,   2550},
    {"Carpets",    		"Old timer's carpet",        2833,   2550},
    {"Carpets",    		"Red checkered carpet",      2818,   2550},
    {"Carpets",    		"Green circled carpet",      2817,   2550},
    {"Carpets",    		"Plain polkadot carpet",     2834,   2550},
    {"Carpets",    		"Tiger rug",                 1828,   1000},
    {"Carpets",    		"Plain round rug",           2835,   2550},
    {"Carpets",    		"Round green rug",           2841,   2550},
    {"Kitchen",    		"CJ's kitchen",              14384,  3000},
    {"Kitchen",    		"Whole kitchen",             14720,  3000},
    {"Kitchen",    		"White kitchen sink",        2132,   1000},
    {"Kitchen",    		"White kitchen counter",  	 2134,   1000},
    {"Kitchen",    		"White kitchen fridge",      2131,   1000},
    {"Kitchen",    		"White kitchen drawers",     2133,   1000},
    {"Kitchen",    		"White kitchen corner",      2341,   1000},
    {"Kitchen",    		"White kitchen cupboard",    2141,   1000},
    {"Kitchen",    		"Green kitchen sink",        2336,   1000},
    {"Kitchen",    		"Green kitchen counter",     2334,   1000},
    {"Kitchen",    		"Green kitchen fridge",      2147,   1000},
    {"Kitchen",    		"Green kitchen corner",      2338,   1000},
    {"Kitchen",    		"Green kitchen washer",      2337,   1000},
    {"Kitchen",    		"Green kitchen cupboard",    2158,   1000},
    {"Kitchen",    		"Green kitchen stove",       2170,   1000},
    {"Kitchen",    		"Red kitchen sink",          2130,   1000},
    {"Kitchen",    		"Red kitchen fridge",        2127,   1000},
    {"Kitchen",    		"Red kitchen cupboard",      2128,   1000},
    {"Kitchen",    		"Red kitchen corner",        2304,   1000},
    {"Kitchen",    		"Red kitchen counter",       2129,   1000},
    {"Kitchen",    		"Wood kitchen sink",         2136,   1000},
    {"Kitchen",    		"Wood kitchen counter",      2139,   1000},
    {"Kitchen",    		"Wood kitchen cupboard",     2140,   1000},
    {"Kitchen",    		"Wood kitchen washer",       2303,   1000},
    {"Kitchen",    		"Wood kitchen unit",         2138,   1000},
    {"Kitchen",    		"Wood kitchen corner",       2305,   1000},
    {"Kitchen",    		"Wood kitchen stove",        2135,   1000},
    {"Kitchen",    		"Modern stove",              19923,  1000},
    {"Kitchen",    		"Old timer's stove",         19915,  1000},
    {"Kitchen",    		"Fork",                      11715,  550},
    {"Kitchen",    		"Butter knife",              11716,  550},
    {"Kitchen",    		"Steak knife",               19583,  550},
    {"Kitchen",    		"Spatula",                   19586,  550},
    {"Kitchen",    		"Double handled pan",        19585,  800},
    {"Kitchen",    		"Single handled pan",        19584,  800},
    {"Kitchen",    		"Frying pan",                19581,  800},
    {"Kitchen",    		"Tall striped saucepan",     11719,  800},
    {"Kitchen",    		"Striped saucepan",          11718,  800},
    {"Kitchen",    		"Cooked steak",              19982,  550},
    {"Kitchen",    		"Raw steak",                 19582,  550},
    {"Kitchen",    		"Green apple",               19576,  550},
    {"Kitchen",    		"Red apple",                 19575,  550},
    {"Kitchen",    		"Orange",                    19574,  550},
    {"Kitchen",    		"Banana",                    19578,  550},
    {"Kitchen",         "Tomato",                    19577,  550},
    {"Tables",     		"Lab table",                 3383,   2000},
    {"Tables",     		"Pool table",                2964,   2000},
    {"Tables",     		"Blackjack table",           2188,   2000},
    {"Tables",     		"Betting table",             1824,   2000},
    {"Tables",     		"Roulette table",            1896,   2000},
    {"Tables",     		"Poker table",               19474,  1000},
    {"Tables",     		"Burger shot table",         2644,   1000},
    {"Tables",     		"Cluckin' bell table",       2763,   1000},
    {"Tables",     		"Wide cluckin' bell table",  2762,   1000},
    {"Tables",     		"Square coffee table",       2370,   1000},
    {"Tables",     		"Donut shop table",          2747,   1000},
    {"Tables",     		"Pizza table",               2764,   1000},
    {"Tables",     		"Wide coffee table",         2319,   1000},
    {"Tables",     		"Rectangular green table",   11691,  1000},
    {"Tables",     		"Squared green table",       11690,  1000},
    {"Tables",     		"Round glass table",         1827,   1000},
    {"Tables",     		"Round wooden table",        2111,   1000},
    {"Tables",     		"Wide dining table",         2357,   1000},
    {"Tables",     		"Plain wooden table",        2115,   1000},
    {"Tables",     		"Plain brown wooden table",  1516,   1000},
    {"Tables",     		"White polkadot table",      1770,   1000},
    {"Tables",     		"Brown dining table",        1737,   1000},
    {"Tables",     		"Round stone table",         2030,   1000},
    {"Tables",     		"Wooden table with rim",     2699,   1000},
    {"Tables",     		"Low coffee table",          1814,   1000},
    {"Tables",     		"Low brown wooden table",    1433,   1000},
    {"Tables",     		"Bedroom table",             2333,   1000},
    {"Tables",     		"Round table with chairs",   1432,   1000},
    {"Tables",     		"Table with benches",        1281,   1000},
    {"Tables",     		"Checkered table & chairs",  1594,   1000},
    {"Tables",     		"Wooden workshop table",     19922,  1000},
    {"Tables",     		"Hexagon shaped table",      2725,   1000},
    {"Tables",     		"Table with VCR",            2313,   1000},
    {"Tables",     		"Low wooden TV stand",       2314,   1000},
    {"Tables",     		"Low brown TV stand",        2315,   1000},
    {"Tables",     		"Plain brown office desk",   2206,   1000},
    {"Tables",     		"Office desk with computer", 2181,   1000},
    {"Tables",     		"Plain wooden office desk",  2185,   1000},
    {"Tables",     		"Computer desk",             2008,   1000},
    {"Chairs",     		"Blue swivel chair",         2356,   2550},
    {"Chairs",     		"Brown dining chair",        1811,   2550},
    {"Chairs",     		"Red folding chair",         2121,   2550},
    {"Chairs",    		"Upholstered chair",         2748,   1000},
    {"Chairs",     		"Folding office chair",      1721,   2550},
    {"Chairs",     		"Round black chair",         2776,   2550},
    {"Chairs",     		"Black stool",               1716,   2550},
    {"Chairs",     		"Brown stool",               2350,   2550},
    {"Chairs",     		"Red stool",                 2125,   2550},
    {"Chairs",     		"Tall wooden dining chair",  2124,   2550},
    {"Chairs",     		"Tall brown dining chair",   1739,   2550},
    {"Chairs",     		"Checkered dining chair",    2807,   2550},
    {"Chairs",     		"Plain office chair",        1671,   2550},
    {"Chairs",     		"Brown folding chair",       19996,  2550},
    {"Chairs",     		"Light brown chair",         19994,  2550},
    {"Chairs",     		"Black lounge chair",        1704,   1000},
    {"Chairs",     		"Beige lounge chair",        1705,   1000},
    {"Chairs",     		"Dark blue reclining chair", 1708,   1000},
    {"Chairs",     		"Brown corner chair",  		 11682,  1000},
    {"Chairs",     		"Old timer's lounge chair",  1711,   1000},
    {"Chairs",     		"Old timer's rocking chair", 1735,   1000},
    {"Chairs",     		"Two chairs and a table",    2571,   1000},
    {"Chairs",     		"Dark brown foot stool",     2293,   1000},
    {"Chairs",     		"Rocking chair",             11734,  2550},
    {"Chairs",     		"Plaid sofa",                1764,   7550},
    {"Chairs",     		"Long black sofa",           1723,   7550},
    {"Chairs",     		"Beige sofa",                1702,   7550},
    {"Chairs",     		"Brown couch",               1757,   7550},
    {"Chairs",     		"Old timer's sofa",          1728,   7550},
    {"Chairs",     		"Brown corner couch piece",  2292,   1000},
    {"Chairs",     		"White & grey couch",        1761,   7550},
    {"Chairs",     		"Patterned couch",           1760,   7550},
    {"Chairs",     		"Plaid couch",               1764,   7550},
    {"Chairs",     		"Dark blue couch",           1768,   7550},
    {"Chairs",     		"Wide brown couch",          2290,   7550},
    {"Chairs",     		"Green couch",               1766,   7550},
    {"Chairs",     		"Patterned armrest couch",   1763,   7550},
    {"Chairs",     		"Red couch",                 11717,  7550},
    {"Chairs",     		"Very wide beige couch",     1710,   11000},
    {"Chairs",     		"Ultra wide beige couch",    1709,   2000},
    {"Chairs",     		"Red and white couch",       1707,   7550},
    {"Posters/Frames",  "Burger shot poster",        2641,   550},
    {"Posters/Frames",  "Cluckin' bell poster",      2766,   550},
    {"Posters/Frames",  "Wash wands poster",         2685,   550},
    {"Posters/Frames",  "For lease poster",          11289,  550},
    {"Posters/Frames",  "Monkey juice poster",       19328,  550},
    {"Posters/Frames",  "Ring donuts poster",        2715,   550},
    {"Posters/Frames",  "Battered ring posterr",     2716,   550},
	{"Posters/Frames",  "Pizza poster",         	 2668,   550},
    {"Posters/Frames",  "T-Shirt poster",            2729,   550},
    {"Posters/Frames",  "Suburban poster",           2658,   550},
    {"Posters/Frames",  "Zip poster",                2736,   550},
    {"Posters/Frames",  "Binco poster",              2722,   550},
    {"Posters/Frames",  "99c binco poster",          2719,   550},
    {"Posters/Frames",  "Binco sale poster",         2721,   550},
    {"Posters/Frames",  "Heat poster",               2661,   550},
    {"Posters/Frames",  "Eris poster",               2655,   550},
    {"Posters/Frames",  "Bobo poster",               2662,   550},
    {"Posters/Frames",  "Base 5 poster",             2691,   550},
    {"Posters/Frames",  "Base 5 cutout #1",        	 2693,   550},
    {"Posters/Frames",  "Base 5 cutout #2",        	 2692,   550},
    {"Posters/Frames",  "Long base 5 poster #1",   	 2695,   550},
    {"Posters/Frames",  "Long base 5 poster #2",   	 2696, 	 550},
    {"Posters/Frames",  "White prolaps poster",   	 2697,   550},
    {"Posters/Frames",  "Black prolaps poster",   	 2656,   550},
    {"Posters/Frames",  "San Fierro frame",       	 19175,  800},
    {"Posters/Frames",  "Flint County frame",     	 19174,  800},
    {"Posters/Frames",  "Gant Bridge frame",      	 19173,  800},
    {"Posters/Frames",  "Los Santos frame",       	 19172,  800},
    {"Posters/Frames",  "City View frame",    		 2289,   800},
    {"Posters/Frames",  "Los Angeles frame",      	 2258,   800},
	{"Posters/Frames",  "Wooden frame",           	 2288,   800},
	{"Posters/Frames",  "Sail Boat frame",        	 2287,   800},
	{"Posters/Frames",  "Ship frame",             	 2286,   800},
	{"Posters/Frames",  "Water frame",            	 2285,   800},
	{"Posters/Frames",  "Church frame",           	 2284,   800},
    {"Posters/Frames",  "Rural frame",        		 2282,   800},
    {"Posters/Frames",  "Sunset frame",				 2281,   800},
    {"Posters/Frames",  "Coast frame",        		 2280,   800},
    {"Posters/Frames",  "Mount chiliad frame",    	 2279,   800},
    {"Posters/Frames",  "Cargo ship frame",       	 2278,   800},
    {"Posters/Frames",  "Cat frame",          		 2277,   800},
    {"Posters/Frames",  "Bridge frame",          	 2276,   800},
    {"Posters/Frames",  "Fruit Bowl frame",       	 2275,   800},
    {"Posters/Frames",  "Flower frame",          	 2274,   800},
    {"Posters/Frames",  "Bouquet frame",          	 2273,   800},
    {"Posters/Frames",  "Landscape frame",        	 2272,   800},
    {"Posters/Frames",  "Paper frame",         		 2271,   800},
    {"Posters/Frames",  "Leaves frame",         	 2270,   800},
    {"Posters/Frames",  "Lake frame",         		 2269,   800},
    {"Posters/Frames",  "Black cat frame",        	 2268,   800},
    {"Posters/Frames",  "Cruise ship frame",      	 2267,   800},
    {"Posters/Frames",  "Night downtown frame",		 2266,   800},
    {"Posters/Frames",  "Dseert rocks frame",     	 2265,   800},
    {"Posters/Frames",  "Beach frame",         		 2264,   800},
    {"Posters/Frames",  "Dock frame",         		 2263,   800},
    {"Posters/Frames",  "Downtown frame",         	 2262,   800},
    {"Posters/Frames",  "Golden gate frame",      	 2261,   800},
    {"Posters/Frames",  "Old Boat frame",         	 2260,   800},
    {"Posters/Frames",  "Bowling frame",          	 2259,   800},
    {"Posters/Frames",  "Pattern frame",        	 2283,   800},
    {"Posters/Frames",  "Squares frame",          	 2257,   800},
    {"Posters/Frames",  "Palm trees frame",       	 2256,   800},
    {"Posters/Frames",  "Erotic frame",         	 2255,   800},
    {"Posters/Frames",  "Yellow car frame",       	 2254,   10},
    {"Storage",     	"Book shelf",                1742,   1000},
	{"Storage",     	"Wardrobe",         	     2307,   400},
	{"Storage",     	"Wooden crate",            	 1217,   1550},
	{"Storage",     	"Metal crate",               964,    1550},
	{"Storage",     	"Wide office cabinet",       2200,   1550},
	{"Storage",    	 	"Yellow cabinet",         	 1730,   1550},
	{"Storage",     	"Open gym locker",        	 11730,  2550},
	{"Storage",     	"Closed gym locker",      	 11729,  2550},
	{"Storage",     	"Toolbox",          		 19921,  1000},
	{"Storage",     	"Chest",                     19918,  800},
	{"Storage",     	"Dresser",                   2094,   2550},
	{"Storage",     	"Warehouse rack",         	 3761,   1550},
	{"Storage",     	"Barrel rack",           	 925,    2550},
	{"Storage",     	"Sex toy rack",          	 2581,   2550},
	{"Storage",     	"Sex magazine rack #1",      2578,   2550},
	{"Storage",     	"Sex magazine rack #2",      2579,   2550},
	{"Storage",     	"Rack with no shelves",      2509,   2550},
	{"Storage",     	"Rack with 3 shelves",       2482,   2550},
	{"Storage",     	"Rack with 4 shelves",       2475,   2550},
	{"Storage",     	"Small rack",			 	 2463,   2550},
	{"Storage",     	"Wide rack",              	 2462,   2550},
	{"Storage",     	"Dresser with drawers",      1743,   2550},
	{"Storage",     	"Wide dresser",              2087,   2550},
	{"Storage",     	"Tall dresser",              2088,   2550},
	{"Storage",     	"Brown dresser",             2089,   2550},
	{"Storage",     	"Single dresser",            2095,   2550},
	{"Storage",     	"White filing cabinet",   	 2197,   2550},
	{"Storage",     	"Green filing cabinet",   	 2610,   2550},
	{"Storage",     	"Dual filing cabinets",      2007,   2550},
	{"Storage",     	"Black shelf",          	 2078,   2550},
	{"Storage",     	"Brown shelf",               2204,   2550},
	{"Storage",     	"Tool shelf",                19899,  2550},
	{"Storage",    	 	"Tool cabinet",     		 19900,  2550},
	{"Storage",     	"Wall mounted shelf",        19940,  2550},
	{"Storage",     	"Clothes shelf",          	 2708,   2550},
	{"Storage",     	"Gun rack",         		 2046,   2550},
	{"Storage",     	"Shop shelf",             	 19640,  2550},
	{"Storage",     	"Blue office shelf",         2191,   2550},
	{"Storage",     	"Wooden office shelf",       2199,   2550},
	{"Storage",     	"Office book shelf",         2161,   2550},
	{"Storage",     	"Tall office cabinet",       2167,   800},
	{"Storage",     	"Wide office cabinet",       2163,   800},
	{"Plants",   		"Palm plant #1",          	 625,    800},
    {"Plants",   		"Palm plant #2",          	 626,    800},
    {"Plants",   		"Palm plant #3",          	 627,    800},
    {"Plants",   		"Palm plant #4",          	 628,  	 800},
    {"Plants",   		"Palm plant #5",          	 630,    800},
    {"Plants",   		"Palm plant #6",          	 631,    800},
    {"Plants",   		"Palm plant #7",          	 632,    800},
    {"Plants",   		"Palm plant #8",         	 633,    800},
    {"Plants",  		"Palm plant #9",         	 646,    800},
    {"Plants",   		"Palm plant #10",            644,    800},
    {"Plants",   		"Palm plant #11",         	 2001,   800},
    {"Plants",   		"Palm plant #12",        	 2010,   800},
    {"Plants",   		"Palm plant #13",        	 2011,   1550},
    {"Plants",   		"Potted plant #1",           948,    1550},
    {"Plants",   		"Potted plant #2",           949,    1550},
    {"Plants",   		"Potted plant #3",           950,  	 1550},
    {"Plants",   		"Potted plant #4",           2194,   1550},
    {"Plants",   		"Potted plant #5",           2195,   1550},
    {"Plants",   		"Potted plant #6",           2203,   1550},
    {"Plants",   		"Potted plant #7",           2240,   1550},
    {"Plants",   		"Potted plant #8",           2241,   1550},
    {"Plants",   		"Potted plant #9",           2242, 	 1550},
    {"Plants",   		"Potted plant #10",          2244, 	 1550},
    {"Plants",   		"Potted plant #11",          2245,   1550},
    {"Plants",   		"Potted plant #12",          2246,   1550},
    {"Plants",   		"Potted plant #13",          2248,   1550},
    {"Plants",   		"Potted plant #14",          2252,   1550},
    {"Plants",   		"Potted plant #15",          2253,   1550},
    {"Plants",   		"Potted plant #16",          2811,   1550},
    {"Plants",   		"Wide plant",      			 638,    2550},
    {"Plants",   		"Single bush plant",         1361,   2550},
    {"Plants",   		"Wide bush plant",           1360,   2550},
    {"Plants",  		"Bush plant and bench",      1364,   1000},
    {"Plants",   		"Window plant #1",           3802,   200},
    {"Plants",   		"Window plant #2",           3810,   200},
    {"Trash",           "Wastebin",                  11706,  550},
    {"Trash",           "Blue trashcan on wheels",   1339,   550},
	{"Trash",           "Blue trashcan",     		 1430,   550},
	{"Trash",           "Trashcan with holes",       1359,   550},
	{"Trash",           "Cluckin' bell trashcan", 	 2770,   550},
	{"Trash",           "Burger shot trashcan",   	 2420,   550},
	{"Trash",           "Round bagged trashcan",     1330,   550},
	{"Trash",           "Round white trashcan",      1329,   550},
	{"Trash",           "Metal trashcan",            1328, 	 550},
	{"Trash",           "Full dumpster",          	 1415,   550},
	{"Trash",           "Closed dumpster",           1227,   550},
	{"Trash",           "Bottle disposal unit",      1336,   550},
	{"Trash",           "Blue dumpster",             1334,   550},
	{"Trash",           "Red dumpster",              1333,   550},
	{"Trash",           "Hippo trashcan",            1371,   550},
	{"Trash",           "Poor trashcan",             1347,   550},
	{"Trash",           "Cement trashcan",           1300,   550},
	{"Trash",           "Trashcan filled with wood", 1442,   550},
	{"Trash",           "Two pallets & trash",       1450,   550},
	{"Trash",           "Single pallet",             1448,   550},
	{"Trash",           "Garbage bag",               1265,   550},
	{"Trash",           "Burger shot bag",           2663,   550},
	{"Trash",           "Pile of boxes",             1440,   550},
    {"Trash",     		"Cardboard box",             1221,   550},
    {"Trash",           "Open pizza box",            2860,   550},
    {"Trash",           "Takeaway trash",         	 2866,   550},
    {"Trash",           "Burger shot trash",      	 2840,   550},
	{"Trash",           "Dirty dishes #1",      	 2812,   550},
    {"Trash",           "Dirty dishes #2",   		 2822,   550},
    {"Trash",           "Dirty dishes #3",      	 2829,   550},
    {"Trash",           "Dirty dishes #4",      	 2830,   550},
    {"Trash",           "Dirty dishes #5",      	 2831,   550},
    {"Trash",           "Dirty dishes #6",      	 2832,   550},
    {"Trash",           "Clean dishes #1",   		 2862,   550},
    {"Trash",           "Clean dishes #2",   		 2863,   550},
    {"Trash",           "Clean dishes #3",   		 2864,   550},
    {"Trash",           "Clean dishes #4",   		 2865,   550},
    {"Trash",           "Assorted trash #1",         2672,   550},
    {"Trash",           "Assorted trash #2",         2677,   550},
    {"Trash",           "Assorted trash #3",         2675,   550},
    {"Trash",           "Assorted trash #4",         2676,   550},
    {"Trash",           "Assorted trash #5",         2674,   550},
    {"Trash",           "Assorted trash #6",         2673,   550},
    {"Trash",           "Assorted trash #7",         2670,   550},
    {"Doors & gates",   "Door with bars",            2930,   800},
    {"Doors & gates",   "Petrol door",       		 2911,   800},
    {"Doors & gates",   "Flat door",          		 3061,   800},
    {"Doors & gates",   "Wardrobe door",         	 1567,   800},
    {"Doors & gates",   "Green push door",        	 1492,   800},
    {"Doors & gates",   "Red windowed door",       	 1493,   800},
    {"Doors & gates",   "Black wooden door",         1494,   800},
    {"Doors & gates",   "Brown windowed door",       3089,   800},
    {"Doors & gates",   "Wooden farm door",        	 1497,   800},
    {"Doors & gates",   "White wooden door",         1498,   800},
    {"Doors & gates",   "Warehouse door",       	 1499,   800},
    {"Doors & gates",   "Red door",        			 1504,   800},
    {"Doors & gates",   "Blue door",        		 1505,   800},
    {"Doors & gates",   "White door",        		 1506,   800},
    {"Doors & gates",   "Yellow door",        		 1507,   800},
    {"Doors & gates",   "Kitchen door",        		 1523,   800},
    {"Doors & gates",   "Motel door",        		 1535,   800},
    {"Doors & gates",   "Blue motel door",           2970,   800},
    {"Doors & gates",   "7/11 door",     			 1560,   800},
    {"Doors & gates",   "Barred door",          	 3061,   800},
    {"Doors & gates",   "Red motel door",            3029,   800},
    {"Doors & gates",   "Security door",       		 2949,   800},
    {"Doors & gates",   "Tall white door",           2948,   800},
    {"Doors & gates",   "Bank door",           		 2946,   800},
    {"Doors & gates",   "Ship door",     			 2944,   800},
    {"Doors & gates",   "Tower door",        		 977,    800},
    {"Doors & gates",   "Maintenance doors",         11714,  800},
    {"Doors & gates",   "Dual dffice door",          19176,  800},
    {"Doors & gates",   "Screen door #1",        	 1495,   800},
    {"Doors & gates",   "Screen door #2",        	 1500,   800},
    {"Doors & gates",   "Screen door #3",        	 1501,   800},
    {"Doors & gates",   "Shop door #1",        		 1532,   800},
    {"Doors & gates",   "Shop door #2",      		 1496,   800},
    {"Doors & gates",   "Shop door #3",        		 1533,   800},
    {"Doors & gates",   "Shop door #4",        		 1537,   800},
    {"Doors & gates",   "Shop door #5",        		 1538,   800},
    {"Doors & gates",   "Office door #1",          	 1566,   800},
    {"Doors & gates",   "Office door #2",         	 1569,   800},
    {"Doors & gates",   "Office door #3",        	 1536,   800},
    {"Doors & gates",   "Office door #4",        	 1557,   800},
    {"Doors & gates",   "Office door #5",        	 1556,   800},
    {"Doors & gates",   "Wooden push door #1",       1491,   800},
    {"Doors & gates",   "Wooden push door #2",       1502,   800},
    {"Doors & gates",   "Garage door #1",            8957,   800},
    {"Doors & gates",   "Garage door #2",            7891,   800},
    {"Doors & gates",   "Garage door #3",     	 	 3037,   800},
    {"Doors & gates",   "Garage door #4",            19861,  800},
    {"Doors & gates",   "Garage door #5",            19864,  800},
    {"Doors & gates",   "Plain metal bar gate",      19912,  1000},
    {"Doors & gates",   "Tall metal bar gate",       971,    1000},
    {"Doors & gates",   "Long metal bar gate",       975,    1000},
    {"Doors & gates",   "Los Santos Airport gate",   980,    1000},
    {"Doors & gates",   "Fenced gate",               985,    1000},
    {"Doors & gates",   "No parking gate",           19870,  1000},
    {"Doors & gates",   "Fenced gate on wheels",     988,    1000},
    {"Walls",           "wall001",                   19353,  800},
    {"Walls",           "wall002",                   19354,  800},
    {"Walls",           "wall003",                   19355,  800},
    {"Walls",           "wall004",                   19356,  800},
    {"Walls",           "wall005",                   19357,  800},
    {"Walls",           "wall006",                   19358,  800},
    {"Walls",           "wall007",                   19359,  800},
    {"Walls",           "wall008",                   19360,  800},
    {"Walls",           "wall009",                   19361,  800},
    {"Walls",           "wall010",                   19362,  800},
    {"Walls",           "wall011",                   19363,  800},
    {"Walls",           "wall012",                   19364,  800},
    {"Walls",           "wall013",                   19365,  800},
    {"Walls",           "wall014",                   19366,  800},
    {"Walls",           "wall015",                   19367,  800},
    {"Walls",           "wall016",                   19368,  800},
    {"Walls",           "wall017",                   19369,  800},
    {"Walls",           "wall018",                   19370,  800},
    {"Walls",           "wall019",                   19371,  800},
    {"Walls",           "wall020",                   19372,  800},
    {"Walls",           "wall021",                   19373,  800},
    {"Walls",           "wall022",                   19374,  800},
    {"Walls",           "wall023",                   19375,  800},
    {"Walls",           "wall024",                   19376,  800},
    {"Walls",           "wall025",                   19377,  800},
    {"Walls",           "wall026",                   19378,  800},
    {"Walls",           "wall027",                   19379,  800},
    {"Walls",           "wall028",                   19380,  800},
    {"Walls",           "wall029",                   19381,  800},
    {"Walls",           "wall030",                   19382,  800},
    {"Walls",           "wall031",                   19383,  800},
    {"Walls",           "wall032",                   19384,  800},
    {"Walls",           "wall033",                   19385,  800},
    {"Walls",           "wall034",                   19386,  800},
    {"Walls",           "wall035",                   19387,  800},
    {"Walls",           "wall036",                   19388,  800},
    {"Walls",           "wall037",                   19389,  800},
    {"Walls",           "wall038",                   19390,  800},
    {"Walls",           "wall039",                   19391,  800},
    {"Walls",           "wall040",                   19392,  800},
    {"Walls",           "wall041",                   19393,  800},
    {"Walls",           "wall042",                   19394,  800},
    {"Walls",           "wall043",                   19395,  800},
    {"Walls",           "wall044",                   19396,  800},
    {"Walls",           "wall045",                   19397,  800},
    {"Walls",           "wall046",                   19398,  800},
    {"Walls",           "wall047",                   19399,  800},
    {"Walls",           "wall048",                   19400,  800},
    {"Walls",           "wall049",                   19401,  800},
    {"Walls",           "wall050",                   19402,  800},
    {"Walls",           "wall051",                   19403,  800},
    {"Walls",           "wall052",                   19404,  800},
    {"Walls",           "wall053",                   19405,  800},
    {"Walls",           "wall054",                   19406,  800},
    {"Walls",           "wall055",                   19407,  800},
    {"Walls",           "wall056",                   19408,  800},
    {"Walls",           "wall057",                   19409,  800},
    {"Walls",           "wall058",                   19410,  800},
    {"Walls",           "wall059",                   19411,  800},
    {"Walls",           "wall060",                   19412,  800},
    {"Walls",           "wall061",                   19413,  800},
    {"Walls",           "wall062",                   19414,  800},
    {"Walls",           "wall063",                   19415,  800},
    {"Walls",           "wall064",                   19416,  800},
    {"Walls",           "wall065",                   19417,  800},
    {"Walls",           "wall066",                   19426,  800},
    {"Walls",           "wall067",                   19427,  800},
    {"Walls",           "wall068",                   19428,  800},
    {"Walls",           "wall069",                   19429,  800},
    {"Walls",           "wall070",                   19430,  800},
    {"Walls",           "wall071",                   19431,  800},
    {"Walls",           "wall072",                   19432,  800},
    {"Walls",           "wall073",                   19433,  800},
    {"Walls",           "wall074",                   19434,  800},
    {"Walls",           "wall075",                   19435,  800},
    {"Walls",           "wall076",                   19436,  800},
    {"Walls",           "wall077",                   19437,  800},
    {"Walls",           "wall078",                   19438,  800},
    {"Walls",           "wall079",                   19439,  800},
    {"Walls",           "wall080",                   19440,  800},
    {"Walls",           "wall081",                   19441,  800},
    {"Walls",           "wall082",                   19442,  800},
    {"Walls",           "wall083",                   19443,  800},
    {"Walls",           "wall084",                   19444,  800},
    {"Walls",           "wall085",                   19445,  800},
    {"Walls",           "wall086",                   19446,  800},
    {"Walls",           "wall087",                   19447,  800},
    {"Walls",           "wall088",                   19448,  800},
    {"Walls",           "wall089",                   19449,  800},
    {"Walls",           "wall090",                   19450,  800},
    {"Walls",           "wall091",                   19451,  800},
    {"Walls",           "wall092",                   19452,  800},
    {"Walls",           "wall093",                   19453,  800},
    {"Walls",           "wall094",                   19454,  800},
    {"Walls",           "wall095",                   19455,  800},
    {"Walls",           "wall096",                   19456,  800},
    {"Walls",           "wall097",                   19457,  800},
    {"Walls",           "wall098",                   19458,  800},
    {"Walls",           "wall099",                   19459,  800},
    {"Walls",           "wall100",                   19460,  800},
    {"Walls",           "wall101",                   19461,  800},
    {"Walls",           "wall102",                   19462,  800},
    {"Walls",           "wall103",                   19463,  800},
    {"Walls",           "wall104",                   19464,  800},
    {"Walls",           "wall105",                   19465,  800},
    {"Decor",           "Guard tower",               3279,   5000},
    {"Decor",           "Tool board",                19815,  550},
    {"Decor",           "Mailbox",                   19867,  550},
    {"Decor",           "Single key",                11746,  550},
    {"Decor",           "Oxygen cylinder",           19816,  550},
    {"Decor",           "Cauldron",                  19527,  550},
    {"Decor",           "Valve",                     2983,   550},
    {"Decor",           "Writing board",             19805,  550},
    {"Decor",           "Punching bag",              1985,   550},
    {"Decor",           "Desk fan",           		 2192,   550},
    {"Decor",           "Satellite dish",            3031,   550},
    {"Decor",           "Shopping cart",             1349,   550},
    {"Decor",           "Fireplace logs",			 19632,  550},
    {"Decor",           "Telescope",                 2600,   550},
    {"Decor",           "Ladder",                    1428,   550},
    {"Decor",           "Plank",                     2937,   550},
    {"Decor",           "Blue curtains",             2558,   550},
    {"Decor",           "Old curtains",              14443,  550},
    {"Decor",           "Blinds",                    18084,  550},
    {"Decor",           "United states flag",        11245,  550},
    {"Decor",           "Double US flag",            2614,   550},
    {"Decor",           "Confederate flag",          2048,   550},
    {"Decor",           "Basketball court",          946,    550},
    {"Decor",           "Basketball",                2114,   550},
    {"Decor",           "Fire exit sign",            11710,  550},
    {"Decor",           "Fire extinguisher",         2690,   550},
    {"Decor",           "Fire extinguisher panel",   11713,  550},
    {"Decor",           "Fire alarm",                11713,  550},
    {"Decor",           "Fire hydrant",              1211,   550},
	{"Decor",           "Crack packet",            2891,   550},
    {"Decor",           "Drug bundle",         		 1279,   550},
    {"Decor",           "White package",           	 1575,   550},
    {"Decor",           "Orange package",          	 1576,   550},
    {"Decor",           "Yellow package",          	 1577, 	 550},
    {"Decor",           "Green package",           	 1578, 	 550},
    {"Decor",           "Blue package",            	 1579,   550},
    {"Decor",           "Red package",             	 1580,   550},
    {"Decor",           "Marijuana bundle",     	 2901,   550},
    {"Decor",           "Marijuana plant",           3409,   550},
    {"Decor",           "Ashtray",           		 1510, 	 550},
    {"Decor",           "Ashtray with cigar",        1665,   550},
    {"Decor",           "Pumpkin",                   19320,  550},
    {"Decor",           "Christmas tree",            19076,  550},
    {"Decor",           "Stage",         			 19608,  2550},
    {"Decor",           "Gold record",          	 19617,  800},
    {"Decor",           "Moose head",        		 1736,   8550},
    {"Decor",           "Cow",                       19833,  1000},
    {"Decor",           "Rocking horse",             11733,  550},
    {"Decor",			"Deer",						 19315,  550},
    {"Decor",           "Boot",                      11735,  550},
    {"Decor",           "Old radiator",      		 1738,   550},
    {"Decor",           "Radiator",                  11721,  550},
    {"Decor",           "Round light",               11727,  550},
    {"Decor",           "Mop & pail",          		 1778,   550},
    {"Decor",           "Chambermaid",       		 1789,   550},
    {"Decor",           "Bucket",            		 2713,   550},
    {"Decor",           "Trolley",                   2994,   550},
    {"Decor",           "Body bags",        		 16444,  550},
    {"Decor",           "Beach ball",                1598, 	 550},
    {"Decor",           "Blackboard",        		 3077,   550},
    {"Decor",           "Dumbell",       			 3072,   550},
    {"Decor",           "Sports bag",                11745,  550},
    {"Decor",           "Portable toilet",           2984,   550},
    {"Decor",   		"Round burger shot sign", 	 2643,   550},
    {"Decor",           "Stretcher",          		 1997,   550},
    {"Decor",           "Hospital bed",              2146,   550},
    {"Decor",           "Work lamp",                 2196,   550},
    {"Decor",           "Fire bell",       			 1613,   550},
    {"Decor",           "Sword",                     19590,  550},
    {"Decor",           "Wooden bat",                19914,  550},
    {"Decor",           "Hand fan",                  19591,  550},
    {"Decor",           "Shop basket",               19592,  550},
    {"Decor",           "Safe door",                 19619,  550},
    {"Decor",           "Safe enclosure",            19618,  550},
    {"Decor",           "Bag of money",              1550,   550},
    {"Decor",           "Oil can",                   19621,  550},
    {"Decor",           "Wrench",                    19627,  550},
    {"Decor",           "Engine",                    19917,  550},
    {"Decor",           "Broom",                     19622,  550},
    {"Decor",           "Briefcase",                 19624,  550},
    {"Decor",           "Cigarette",                 19625,  550},
    {"Decor",           "Fire wood",                 19632,  550},
    {"Decor",           "Compacted trash",           19772,  550},
    {"Decor",           "Medic kit",                 11738,  550},
    {"Decor",           "Clip",                      19995,  550},
    {"Decor",           "Dippo lighter",             19998,  550},
    {"Decor",           "Briquettes",                19573,  550},
    {"Decor",           "Meat Sack",                 2805,   550},
    {"Decor",           "Small meat sack",           2803,   550},
    {"Decor",           "Stack of magazines",        2855,   550},
    {"Decor",           "Scattered magazines",       2852,   550},
    {"Decor",           "Scattered books",           2854,   550},
    {"Decor",           "Wooden stairs",             3361,   550},
    {"Decor",           "Long concrete stairs",      14410,  550},
    {"Decor",           "Short concrete stairs",     14416,  550},
    {"Decor",           "Short stairs",              14877,  550},
    {"Decor",           "Big window",      			 19325,  800},
    {"Decor",           "Small window",           	 19466,  550},
    {"Decor",           "Breakable window",       	 1649,   75},
    {"Decor",           "Target #1",           		 2056,   550},
    {"Decor",           "Target #2",           		 2055,   550},
    {"Decor",           "Target #3",           		 2051,   550},
    {"Decor",           "Target #4",           		 2050,   550},
    {"Decor",           "Target #5",           		 2049,   550},
    {"Decor",           "Clothes pile #1",     		 2819,   550},
    {"Decor",           "Clothes pile #2",      	 2843,   550},
    {"Decor",           "Clothes pile #3",      	 2844,   550},
    {"Decor",           "Clothes pile #4",      	 2845,   550},
    {"Decor",           "Clothes pile #5",      	 2846,   550},
   	{"Effect", 	 		"Smoke Flare",      	 	18728, 3000},
	{"Effect", 	 		"Puke",      	 		 	18722, 3000},
	{"Effect", 	 		"Molotov Fire",      	 	18701, 3000},
	{"Effect", 	 		"Coke Trail",      	 		18676, 3000},
	{"Effect", 	 		"Cam Flash (Once)",     	18670, 3000},
	{"Effect", 	 		"Flasher", 			 		345,   3000},
	{"Special",  		"Chemistry Dryer",      	3287,  1200},
	{"Special",  		"Centrifuge",      	 		19830, 31000},
	{"Special",  		"Mixer",      			 	19585, 21000},
	{"Special",  		"Reactor",      		 	2360,  2000},
	{"Special",  		"Dehydrater",      	 		2002,  900},
	{"Special",  		"Pickup Pump",      	 	1244,  6000},
	{"Special",  		"Pickup Pump (Small)",  	1008,  1000},
	{"Special",  		"Bike Pedal",      	 		2798,  1000},
	{"Special",  		"Long Exhaust",      	 	1114,  700},
	{"Graffiti", 		"Tag [GSF]", 				18659, 800},
	{"Graffiti", 		"Tag [SBF]", 				18660, 800},
	{"Graffiti", 		"Tag [VLA]", 				18661, 800},
	{"Graffiti", 		"Tag [KTB]", 				18662, 800},
	{"Graffiti", 		"Tag [SFR]", 				18663, 800},
	{"Graffiti", 		"Tag [TBD]", 				18664, 800},
	{"Graffiti", 		"Tag [LSV]", 				18665, 800},
	{"Graffiti", 		"Tag [FYB]", 				18666, 800},
	{"Graffiti", 		"Tag [RHB]", 				18667, 800},
	{"Misc",     		"Wine Glass",  		 		19818, 8550},
	{"Misc",     		"Cocktail Glass",       	19819, 8550},
	{"Misc",     		"Propbeer Glass",  	 		1666,  8550},
	{"Misc",     		"Big Cock",  		 	 	19823, 8550},
	{"Misc",     		"Red rum",  		     	19820, 8550},
	{"Misc",     		"Vodka",  		         	19821, 8550},
	{"Misc",     		"X.O",  		         	19824, 8550},
	{"Misc",    		"Damaged crate",  		 	924,   8550},
	{"Misc",     		"Top crate",  		     	1355,  8550},
	{"Misc",    	 	"Empty crate",  		 	19639, 8550},
	{"Misc",     		"Paper Messes",  		 	2674,  8550},
	{"Misc",     		"Fisinh Rod",  		 		18632, 600},
	{"Misc",     		"Rope1",  			 	 	19087, 800},
	{"Misc",     		"CJ_FLAG1",  			 	2047,  800},
	{"Misc",     		"kmb_packet",           	2891,  1000},
	{"Misc",     		"craigpackage",         	1279,  1000},
	{"Misc",     		"drug_white",           	1575,  1000},
	{"Misc",     		"drug_orange",          	1576,  1000},
	{"Misc",     		"drug_yellow",          	1577,  1000},
	{"Misc",    		"drug_green",           	1578,  1000},
	{"Misc",     		"drug_blue",            	1579,  1000},
	{"Misc",    	 	"drug_red",             	1580,  1000},
	{"Misc",     		"kmb_marijuana",        	2901,  2000},
	{"Misc",     		"grassplant",           	3409,  1000},
	{"Misc",     		"DYN_ASHTRY",           	1510,  1000},
	{"Misc",     		"propashtray1",         	1665,  1000},
	{"Misc",     		"WoodenStage1",         	19608, 2000},
	{"Misc",     		"DrumKit1",      			19609, 1000},
	{"Misc",     		"Microphone1",          	19610, 1000},
	{"Misc",     		"MicrophoneStand1",     	19611, 2000},
	{"Misc",     		"GuitarAmp1",           	19612, 1000},
	{"Misc",     		"GuitarAmp2",        	 	19613, 2000},
	{"Misc",     		"GuitarAmp3",        	 	19614, 2000},
	{"Misc",     		"GuitarAmp4",       	 	19615, 1000},
	{"Misc",     		"GuitarAmp5",       	 	19616, 1000},
	{"Misc",     		"GoldRecord1",          	19617, 1200},
	{"Misc",     		"CJ_Stags_head",        	1736,  2000},
	{"Misc",     		"CJ_Radiator_old",      	1738,  1000},
	{"Misc",     		"CJ_MOP_PAIL",          	1778,  1000},
	{"Misc",     		"CJ_chambermaid",       	1789,  2000},
	{"Misc",     		"cj_bucket",            	2713,  1000},
	{"Misc",     		"des_blackbags",        	16444, 2000},
	{"Misc",     		"nf_blackboard",        	3077,  2000},
	{"Misc",     		"kmb_dumbbell_L",       	3072,  1000},
	{"Misc",     		"kmb_dumbbell_R",       	3071,  1000},
	{"Misc",     		"portaloo",             	2984,  1200},
	{"Misc",     		"CJ_TARGET6",           	2056,  1000},
	{"Misc",     		"CJ_TARGET5",           	2055,  1000},
	{"Misc",     		"CJ_TARGET4",           	2051,  1000},
	{"Misc",     		"CJ_TARGET2",           	2050,  1000},
	{"Misc",     		"CJ_TARGET1",           	2049,  1000},
	{"Misc",     		"hos_trolley",          	1997,  1000},
	{"Misc",     		"shop_sec_cam",     	 	1886,  1000},
	{"Misc",     		"nt_firehose_01",       	1613,  1000},
	{"Misc",     		"lsmall_window01",      	19325, 2000},
	{"Misc",     		"window001",            	19466, 1200},
	{"Misc",     		"wglasssmash",          	1649,  1000},
	{"Misc",     		"Orange1",          	 	19574, 1000},
	{"Misc",     		"Apple1",     			 	19575, 1000},
	{"Misc",     		"Apple2",       		 	19576, 1000},
	{"Misc",     		"Tomato1",      		 	19577, 1000},
	{"Misc",     		"Banana1",              	19578, 1000},
	{"Misc",     		"gb_bedclothes01",      	2819,  800},
	{"Misc",     		"gb_bedclothes02",      	2843,  800},
	{"Misc",     		"gb_bedclothes03",      	2844,  800},
	{"Misc",     		"gb_bedclothes04",      	2845,  800},
	{"Misc",     		"gb_bedclothes05",      	2846,  800},
	{"Misc",     		"GB_platedirty01",      	2812,  800},
	{"Misc",     		"GB_kitchplatecln01",   	2822,  800},
	{"Misc",     		"GB_platedirty02",      	2829,  800},
	{"Misc",    	 	"GB_platedirty04",      	2830,  800},
	{"Misc",     		"GB_platedirty03",      	2831,  800},
	{"Misc",     		"GB_platedirty05",      	2832,  800},
	{"Misc",     		"GB_kitchplatecln02",   	2862,  800},
	{"Misc",     		"GB_kitchplatecln03",   	2863,  800},
	{"Misc",     		"GB_kitchplatecln04",   	2864,  800},
	{"Misc",     		"GB_kitchplatecln05",   	2865,  800},
	{"Misc",  	 		"Angel",      	 		 	3935,  5000},
	{"Misc",  	 		"Carter Statue",      	 	14467, 5000},
	{"Misc",  	 		"Broken Statue",      	 	2743,  5000},
	{"Misc",  	 		"Rocking Horse",      	 	11733, 5000},
	{"Misc",  	 		"Clothes Hanger",       	2373,  1000}
};

new const bizInteriors[][bizInt] =
{
    {"7/11", 		  			10000000, 6, -27.4377, -57.6114, 1003.5469, 0.0000},
	{"Ammunation",    		    12000000, 6,  316.2873, -169.6470, 999.6010, 0.0000},
	{"Clothing Line",    	  	10000000, 14, 204.3860, -168.4586, 1000.5234, 0.0000},
	{"Gym",         		    3000000, 7,  773.7802, -78.2581, 1000.6619, 0.0000},
	{"Resturant",  		  		10000000, 10, 363.3276, -74.6505, 1001.5078, 315.0000},
	{"Advertisement Agency",  	5000000, 3,  834.1517, 7.4096, 1004.1870, 90.0000},
	{"Club/Bar",              	8000000, 11, 501.8694, -68.0046, 998.7578, 179.6117},
    {"Dealership",              25000000, 3, 1494.2870, 1303.7673, 1093.2891, 0.1082}
};

enum entranceEnum
{
	eName[32],
	eInterior,
 	eWorld,
 	eMapIcon,
 	eFreeze,
	Float:ePosX,
	Float:ePosY,
	Float:ePosZ,
	Float:ePosA,
	Float:eIntX,
	Float:eIntY,
	Float:eIntZ,
	Float:eIntA
};

new const staticEntrances[][entranceEnum] =
{   // Only PD Entrances must have an Interior value of 127, restricted will also have VW of 2
	{"Hospital",	1,  1,  22,  true, 2034.2003, -1402.1976, 17.2951, 180.0000,1266.3842,-1291.3970,1061.1450, 0.0000},
	{"Hospital",	2,  2,  22,  true, 1172.5100, -1325.3057, 15.4045, 270.0000, 1266.3842,-1291.3970,1061.1450, 0.0000},
	{"City Bank",   	5,  3,  52,  true, 1462.1046, -1021.3057, 24.1848, 180.0000, 1667.3536, -995.3700, 683.6913, 0.0000},
	{"City Hall",            	3,  4,  12,  true, 1481.0208, -1772.0995, 18.9225,   0.0000, 2670.2659, -611.3723, -71.3454, 0.0000},
	{"Los Santos Police Department",     	1,  0,  30,  true, 1554.7660, -1675.5736, 16.3396,  90.0000,  -2766.0518, 377.0463, 3001.4258, 0.0000},
	{"PD STATION II",     	2,  5,  30,  true, 2326.6721, -1374.4871, 24.0821,  90.0000,  -1591.8784, 733.3401, 910.3464, 0.0000},
	{"Department of Corrections",     	1,  0,  30,  true, 271.9498, 1382.4142, 10.5975, 88.2023,  2055.0938, -2033.5759, 868.9713, 270.0000},
	{"Abs Gma Studio",     	2,  5,  30,  true, 759.8765, -1358.8900, 13.5297,  90.0000,  708.6219, -1332.7191, -6.4059, 182.3999},
	//{"Job Center",     			1,  11, 12,  true,  1247.8871, -1559.6300, 13.3293, 180.4201,  -501.1844, 286.8678, 2001.0950, 0.0000},

	{"White House",	1,  1,  22,  true, 1122.4539, -2037.0104, 69.8892, 180.0000,1125.9490, -2023.8533, 1410.5736, 84.5400},

	{"Licensing Department", 	3,  6,  59, true, 1869.9830, -1855.1700, 13.2456, 0.0000, -2039.2980, -134.5179, -50.9141, 0.0000},
	{"Drug Den",             	5,  8,  23, true, 2166.1746, -1671.4641, 15.0737, 225.0000, 318.6025, 1114.9443, 1083.8828, 0.0000},
	{"Crack House",          	5,  9,  23, true, 2351.9768, -1170.6638, 28.0746,   0.0000,   2352.9343,-1180.8712,1027.9766, 90.0000},
	{"Heisenberg's Trailer", 	2,  10, 37, true,  -65.0972, -1574.3820,  2.6107, 180.0000,   1.6362, -3.0563, 999.4284, 90.0000},
	{"NBI Headquarters",     	1,  11, 30,  true,  330.6662, -1509.9915, 36.0391, 225.0000,  1165.6996, 360.0051, 1002.3676, 0.0000},
	{"The Grand Casino",		10,  420,52,  true, 1452.2224, -1048.5103, 23.5985, 178.1902, 2018.9954, 1017.8815, 997.0859,89.8200},
	{"Jefferson Church",		3,  13,  52,  true, 2233.9836,-1333.2123,23.9815, 90.00, -2029.4714,1019.3882,1418.4969,270.0},
	{"Little Mexico Church",	3,  14, 52,  true, 1720.3250,-1741.1630,13.5469, 0.00, -2029.4714,1019.3882,1418.4969,270.0},
	//FORTCARSON
	{"City Hall",            	3,  4,  0,  true, -207.7665, 1119.2238, 19.9003,   0.0000, 1469.6366, -1809.1033, 2350.0251, 90.0000},
	{"Fort Carson Hospital",     	2,  5,  22,  true, -318.6735, 1048.5116, 20.0674,  90.0000,  1601.3693, 554.4937, 502.8540, 279.083}
};

enum aEnum
{
	aID,
	bool:aExists,
	Float:aPosX,
	Float:aPosY,
	Float:aPosZ,
	Float:aPosA,
	Text3D:aText,
	aObject
};
new AtmInfo[MAX_ATMS][aEnum];
enum veEnum
{
	aID,
	bool:aExists,
	Float:aPosX,
	Float:aPosY,
	Float:aPosZ,
	Float:aPosA,
	Text3D:aText,
	aObject
};
new VenInfo[MAX_VENDORS][veEnum];
enum mdcEnum
{
	aID,
	bool:aExists,
	Float:aPosX,
	Float:aPosY,
	Float:aPosZ,
	Float:aPosA,
	Text3D:aText,
	aObject
};
new MdcInfo[MAX_MDC][mdcEnum];
enum baEnum
{
	aID,
	bool:aExists,
	Float:aPosX,
	Float:aPosY,
	Float:aPosZ,
	Float:aPosA,
	Text3D:aText,
	aObject
};
new BarInfo[MAX_BAR][baEnum];
enum pgEnum
{
	aID,
	bool:aExists,
	Float:aPosX,
	Float:aPosY,
	Float:aPosZ,
	Float:aPosA,
	Text3D:aText,
	aObject,
	aMapIcon
};
new PGInfo[MAX_PGARAGE][pgEnum];
enum jobEnum
{
	jobName[32],
	Float:jobX,
	Float:jobY,
	Float:jobZ
};
enum suEnum
{
	aID,
	bool:aExists,
	Float:aPosX,
	Float:aPosY,
	Float:aPosZ,
	Float:aPosA,
	Text3D:aText,
	aObject
};
new SurInfo[MAX_SURGERY][suEnum];
new const jobLocations[][jobEnum] =
{
	{"Foodpanda", 		980.6055, -1297.1161, 13.5462},
	{"Trucker",     	2209.8442, -2644.8171, 13.5469},
	{"Fisherman",   	393.2632,  -2070.5837, 7.8359},
	{"Bodyguard",   	2227.4705, -1715.9694, 13.5302},
	{"Arms Dealer",  	1370.2173, -1311.9095, 13.5469},
	{"Miner",           -1008.2990,-2158.0593,34.7481},
	{"Taxi Driver",     1748.1373, -1863.0981, 13.5755},
	{"Drug Dealer",     2165.3611, -1673.0824, 15.0778},
	{"Lawyer",          1381.0668, -1086.6857, 27.3906},
	{"Detective",       -1651.5219, 699.1163, 1008.7549},
	{"Garbage Man", 	2442.2952, -2121.4084, 12.9813},
	{"Forklifter",      2772.6768, -2423.9595, 13.6374},
	{"Lumber Jack",     2359.1599, -650.2137, 128.0523},
	{"Construction",	1265.4034, -1265.7041, 13.3503},
    {"Tailor",	        1031.5938, -1442.6237, 13.5546}
};

/*enum FuelEnum {
	Float:FuelX,
	Float:FuelY,
	Float:FuelZ
};*/

/*new const FuelStation[][FuelEnum] = {
	{1004.0070, -939.3102, 42.1797},
	{1944.3260, -1772.9254, 13.3906},
	{-90.5515, -1169.4578, 2.4079},
	{-1609.7958, -2718.2048, 48.5391},
	{-2029.4968, 156.4366, 28.9498},
	{-2408.7590, 976.0934, 45.4175},
	{-2243.9629, -2560.6477, 31.8841},
	{-1676.6323, 414.0262, 6.9484},
	{2202.2349, 2474.3494, 10.5258},
	{614.9333, 1689.7418, 6.6968},
	{-1328.8250, 2677.2173, 49.7665},
	{70.3882, 1218.6783, 18.5165},
	{654.9641, -559.7485, 16.5015},
	{654.9617, -570.4176, 16.5015},
	{1382.9899, 461.9903, 20.1245},
	{1380.9395, 457.2494, 19.9260}
};*/

enum atmEnum
{
	Float:atmX,
	Float:atmY,
	Float:atmZ,
	Float:atmA
};

new const atmMachines[][atmEnum] =
{
    {2228.394775, -1714.255126, 13.158315, 270.000000},
    {1928.599975, -1779.941650, 13.136871, 90.000000},
    {1102.299438, -1438.380981, 15.396868, 90.000000},
    {563.902526, -1293.948730, 16.858232, 180.000000},
    {2233.269042, -1158.040527, 25.540679, 270.000000},
    {827.125183, -1345.751220, 13.182147, 270.000000},
    {827.125183, -1346.811157, 13.182147, 270.000000},
    {1093.036621, 29.262479, 1000.309509, 0.000000},
    {-14.377381, -180.600250, 1003.186889, 180.000000},
    {9.334012, -31.044189, 1003.159179, 270.000000},
    {-24.413511, -91.806381, 1003.126708, 180.000000},
    {-21.125793, -140.438766, 1003.166564, 180.000000},
    {-24.290849, -57.946674, 1003.176574, 180.000000},
    {1274.5690,	-946.8024,	1084.5000,  0.000000}
};

enum fireEnum
{
 	fireIndex,
 	Float:fireX,
 	Float:fireY,
 	Float:fireZ,
 	Float:fireA,
};

new const randomFireSpawns[][fireEnum] =
{
    {0, 1720.231079, -1740.936889, 11.432815, 180.922180},
    {0, 1723.581298, -1740.882934, 11.432815, 180.922180},
    {0, 1726.050537, -1740.842773, 11.432815, 180.922180},
    {0, 1716.479858, -1740.926757, 11.432815, 180.922180},
    {0, 1713.465332, -1740.676391, 11.432815, 180.922180},
    {0, 1723.581298, -1740.882934, 13.742803, 180.922180},
    {0, 1726.050537, -1740.842773, 14.072817, 180.922180},
    {0, 1720.231079, -1740.936889, 14.142808, 180.922180},
    {0, 1716.479858, -1740.926757, 14.642818, 180.922180},
    {0, 1713.465332, -1740.676391, 14.992820, 180.922180},
    {0, 1729.405151, -1742.339111, 11.432815, 180.922180},
    {0, 1729.405883, -1742.379028, 14.632813, 180.922180},
    {0, 1729.453002, -1745.278564, 11.432815, 180.922180},
    {0, 1729.452514, -1745.258789, 14.632813, 180.922180},
    {0, 1729.500610, -1748.218139, 11.432815, 180.922180},
    {0, 1729.497314, -1748.038085, 14.632813, 180.922180},
    {0, 1729.548095, -1751.127929, 11.432815, 180.922180},
    {0, 1729.547485, -1751.098022, 14.632813, 180.922180},
    {0, 1729.587524, -1753.567871, 11.432815, 180.922180},
    {0, 1729.587280, -1753.588500, 14.632813, 180.922180},
    {0, 1710.109741, -1740.329467, 11.432815, 180.922180},
    {0, 1707.230224, -1740.376220, 11.432815, 180.922180},
    {0, 1704.329956, -1740.422607, 11.432815, 180.922180},
    {0, 1710.109741, -1740.329467, 14.922813, 180.922180},
    {0, 1707.150390, -1740.377075, 14.922813, 180.922180},
    {0, 1704.710327, -1740.416137, 14.922813, 180.922180},
    {1, 1972.983886, -1923.633544, 11.286870, 358.727569},
    {1, 1975.173583, -1923.682617, 11.286870, 358.727569},
    {1, 1977.542724, -1923.735229, 11.286870, 358.727569},
    {1, 1979.951782, -1923.788696, 11.286870, 358.727569},
    {1, 1982.091552, -1923.836547, 11.286870, 358.727569},
    {1, 1984.420532, -1923.887817, 11.286870, 358.727569},
    {1, 1986.800292, -1923.941040, 11.286870, 358.727569},
    {1, 1989.079589, -1923.991821, 11.286870, 358.727569},
    {1, 1991.318847, -1924.041625, 11.286870, 358.727569},
    {1, 1993.569335, -1924.091918, 11.286870, 358.727569},
    {1, 1995.939086, -1924.143676, 11.286870, 358.727569},
    {1, 1998.008422, -1924.189697, 11.286870, 358.727569},
    {1, 1998.008422, -1924.189697, 14.286870, 358.727569},
    {1, 1995.939086, -1924.143676, 14.286870, 358.727569},
    {1, 1993.569335, -1924.091918, 14.286870, 358.727569},
    {1, 1991.318847, -1924.041625, 14.286870, 358.727569},
    {1, 1989.079589, -1923.991821, 14.286870, 358.727569},
    {1, 1986.800292, -1923.941040, 14.286870, 358.727569},
    {1, 1984.420532, -1923.887817, 14.286870, 358.727569},
    {1, 1982.091552, -1923.836547, 14.286870, 358.727569},
    {1, 1979.951782, -1923.788696, 14.286870, 358.727569},
    {1, 1977.542724, -1923.735229, 14.286870, 358.727569},
    {1, 1975.173583, -1923.682617, 14.286870, 358.727569},
    {1, 1972.983886, -1923.633544, 14.286870, 358.727569},
    {2, 2422.197753, -1963.760864, 11.329407, 270.000000},
    {2, 2422.197753, -1965.961059, 11.329407, 270.000000},
    {2, 2422.538085, -1968.141479, 11.329407, 270.000000},
    {2, 2422.437988, -1970.161865, 11.329407, 270.000000},
    {2, 2422.488037, -1972.322143, 11.329407, 270.000000},
    {2, 2422.488037, -1974.422363, 11.329407, 270.000000},
    {2, 2422.488037, -1976.602905, 11.329407, 270.000000},
    {2, 2422.568115, -1978.533569, 11.329407, 270.000000},
    {2, 2422.678222, -1980.704101, 11.329407, 270.000000},
    {2, 2422.197753, -1963.760864, 13.829407, 270.000000},
    {2, 2422.197753, -1965.961059, 13.829407, 270.000000},
    {2, 2422.538085, -1968.141479, 13.829407, 270.000000},
    {2, 2422.437988, -1970.161865, 13.829407, 270.000000},
    {2, 2422.488037, -1972.322143, 13.829407, 270.000000},
    {2, 2422.488037, -1974.422363, 13.829407, 270.000000},
    {2, 2422.488037, -1976.602905, 13.829407, 270.000000},
    {2, 2422.568115, -1978.533569, 13.829407, 270.000000},
    {2, 2422.678222, -1980.704101, 13.829407, 270.000000},
    {3, 855.264770, -1038.802124, 23.446907, 215.000000},
    {3, 853.698852, -1040.191894, 23.446907, 215.000000},
    {3, 851.837646, -1041.666137, 23.446907, 215.000000},
    {3, 850.262207, -1042.989501, 23.446907, 215.000000},
    {3, 848.620910, -1044.236816, 23.446907, 215.000000},
    {3, 846.878112, -1045.530883, 23.446907, 215.000000},
    {3, 844.986694, -1046.648193, 23.446907, 215.000000},
    {3, 843.184570, -1048.032226, 23.446907, 215.000000},
    {3, 841.548889, -1049.287597, 23.446907, 215.000000},
    {3, 839.740478, -1050.627563, 23.446907, 215.000000},
    {4, 512.298522, -1522.487792, 12.252450, 90.000000},
    {4, 512.298522, -1520.456787, 12.252450, 90.000000},
    {4, 512.298522, -1518.425903, 12.252450, 90.000000},
    {4, 512.298522, -1516.165405, 12.252450, 90.000000},
    {4, 512.298522, -1514.245239, 12.252450, 90.000000},
    {4, 512.068359, -1511.944091, 12.252450, 90.000000},
    {4, 512.068359, -1509.814208, 12.252450, 90.000000},
    {4, 512.298522, -1507.425292, 12.252450, 90.000000},
    {4, 512.298522, -1505.304931, 12.252450, 90.000000},
    {4, 512.298522, -1503.384521, 12.252450, 90.000000},
    {4, 512.298522, -1501.624389, 12.252450, 90.000000},
    {4, 512.298522, -1499.298339, 12.252450, 90.000000},
    {4, 512.298522, -1522.487792, 13.752450, 90.000000},
    {4, 512.298522, -1520.456787, 13.752450, 90.000000},
    {4, 512.298522, -1518.425903, 13.752450, 90.000000},
    {4, 512.298522, -1516.165405, 13.752450, 90.000000},
    {4, 512.298522, -1514.245239, 13.752450, 90.000000},
    {4, 512.068359, -1511.944091, 13.752450, 90.000000},
    {4, 512.068359, -1509.814208, 13.752450, 90.000000},
    {4, 512.298522, -1507.425292, 13.752450, 90.000000},
    {4, 512.298522, -1505.304931, 13.752450, 90.000000},
    {4, 512.298522, -1503.384521, 13.752450, 90.000000},
    {4, 512.298522, -1501.624389, 13.752450, 90.000000},
    {4, 512.298522, -1499.298339, 13.752450, 90.000000},
    {5, 2012.939208, -1282.796264, 21.760301, 179.226959},
    {5, 2010.718627, -1282.766845, 21.760301, 179.226959},
    {5, 2008.219238, -1282.732910, 21.760301, 179.226959},
    {5, 2005.989379, -1282.702880, 21.760301, 179.226959},
    {5, 2003.889770, -1282.674316, 21.760301, 179.226959},
    {5, 2001.719848, -1282.645507, 21.760301, 179.226959},
    {5, 1999.509765, -1282.615966, 21.760301, 179.226959},
    {5, 1997.539794, -1282.589599, 21.760301, 179.226959},
    {5, 1995.449462, -1282.561889, 21.760301, 179.226959},
    {5, 1993.546508, -1282.786621, 21.760301, 179.226959},
    {5, 1991.387695, -1282.647827, 21.760301, 179.226959},
    {5, 1989.187133, -1282.638427, 21.760301, 179.226959},
    {5, 1987.196044, -1282.701660, 21.760301, 179.226959},
    {5, 1985.255126, -1282.785278, 21.760301, 179.226959},
    {5, 1983.203491, -1282.928100, 21.760301, 179.226959},
    {5, 1981.183105, -1282.901489, 21.760301, 179.226959},
    {5, 1979.322875, -1282.876708, 21.760301, 179.226959},
    {5, 1977.321655, -1282.920288, 21.760301, 179.226959},
    {5, 1975.070434, -1282.950805, 21.760301, 179.226959},
    {5, 1973.359741, -1282.997802, 21.760301, 179.226959},
    {6, 2520.653076, -1268.459106, 32.786579, 268.202911},
    {6, 2520.595947, -1270.278076, 32.786579, 268.202911},
    {6, 2520.631347, -1272.040527, 32.786579, 268.202911},
    {6, 2520.779785, -1273.676757, 32.786579, 268.202911},
    {6, 2520.882080, -1275.182128, 32.786579, 268.202911},
    {6, 2520.826904, -1276.951538, 32.786579, 268.202911},
    {6, 2520.767822, -1278.821655, 32.786579, 268.202911},
    {6, 2520.811035, -1280.303833, 32.786579, 268.202911},
    {6, 2520.782958, -1281.844604, 32.786579, 268.202911},
    {6, 2520.734863, -1283.715209, 32.786579, 268.202911},
    {6, 2521.593261, -1265.743408, 32.543724, 178.275573},
    {6, 2520.653076, -1268.459106, 34.286579, 268.202911},
    {6, 2520.595947, -1270.278076, 34.286579, 268.202911},
    {6, 2520.631347, -1272.040527, 34.286579, 268.202911},
    {6, 2520.779785, -1273.676757, 34.286579, 268.202911},
    {6, 2520.882080, -1275.182128, 34.286579, 268.202911},
    {6, 2520.826904, -1276.951538, 34.286579, 268.202911},
    {6, 2520.767822, -1278.821655, 34.286579, 268.202911},
    {6, 2520.811035, -1280.303833, 34.286579, 268.202911},
    {6, 2520.782958, -1281.844604, 34.286579, 268.202911},
    {6, 2520.734863, -1283.715209, 34.286579, 268.202911},
    {6, 2521.593261, -1265.743408, 34.043724, 178.275573},
    {7, 2420.582031, -1510.028320, 22.002197, 87.980613},
    {7, 2420.656494, -1507.899536, 22.002197, 87.980613},
    {7, 2420.729248, -1505.820434, 22.002197, 87.980613},
    {7, 2420.797607, -1503.861328, 22.002197, 87.980613},
    {7, 2420.706298, -1501.856079, 22.002197, 87.980613},
    {7, 2420.772460, -1499.967163, 22.002197, 87.980613},
    {7, 2420.558349, -1498.327880, 22.002197, 87.980613},
    {7, 2420.629638, -1496.288818, 22.002197, 87.980613},
    {7, 2420.637451, -1494.617797, 22.002197, 87.980613},
    {7, 2418.689453, -1511.844482, 21.619995, 0.000000},
    {7, 2416.989501, -1511.844482, 21.619995, 0.000000},
    {7, 2415.138427, -1511.844482, 21.619995, 0.000000},
    {7, 2413.137939, -1511.844482, 21.619995, 0.000000},
    {7, 2411.336914, -1511.844482, 21.619995, 0.000000},
    {7, 2409.695800, -1511.844482, 21.619995, 0.000000},
    {7, 2408.024169, -1511.844482, 21.619995, 0.000000},
    {7, 2406.803466, -1511.844482, 21.619995, 0.000000},
    {7, 2405.712890, -1511.844482, 21.619995, 0.000000},
    {8, 1769.756469, -1721.183105, 11.426870, 0.000000},
    {8, 1771.825805, -1721.219238, 11.426870, 0.000000},
    {8, 1774.065917, -1721.219238, 11.426870, 0.000000},
    {8, 1776.336303, -1721.219238, 11.426870, 0.000000},
    {8, 1778.396972, -1721.219238, 11.426870, 0.000000},
    {8, 1780.507202, -1721.219238, 11.426870, 0.000000},
    {8, 1782.597290, -1721.219238, 11.426870, 0.000000},
    {8, 1784.728027, -1721.219238, 11.426870, 0.000000},
    {8, 1786.797851, -1721.219238, 11.426870, 0.000000},
    {8, 1788.677001, -1721.219238, 11.426870, 0.000000},
    {8, 1790.987304, -1721.219238, 11.426870, 0.000000},
    {8, 1792.916625, -1721.219238, 11.426870, 0.000000},
    {8, 1794.967285, -1721.219238, 11.426870, 0.000000},
    {8, 1796.447021, -1721.219238, 11.426870, 0.000000},
    {8, 1798.347534, -1721.219238, 11.426870, 0.000000},
    {9, 2723.256591, -2020.687255, 11.477196, 0.000000},
    {9, 2723.196289, -2022.766357, 11.477196, 0.000000},
    {9, 2723.316894, -2024.821044, 11.477196, 0.000000},
    {9, 2723.316894, -2026.461547, 11.477196, 0.000000},
    {9, 2723.316894, -2028.431030, 11.477196, 0.000000},
    {9, 2723.316894, -2030.141479, 11.477196, 0.000000},
    {9, 2723.316894, -2031.961547, 11.477196, 0.000000},
    {9, 2723.316894, -2033.631713, 11.477196, 0.000000},
    {9, 2723.316894, -2035.612060, 11.477196, 0.000000},
    {9, 2723.316894, -2037.552978, 11.477196, 0.000000},
    {9, 2723.316894, -2038.973632, 11.477196, 0.000000}
};

IsAtChopPlace(playerid)
{
    if(IsPlayerInRangeOfPoint(playerid, 12.0, 2348.6545,-683.6923,133.6480) || IsPlayerInRangeOfPoint(playerid, 12.0, 2329.5427,-724.5271,130.9375) || IsPlayerInRangeOfPoint(playerid, 12.0, 2331.0425,-739.7442,131.4731) || IsPlayerInRangeOfPoint(playerid, 12.0, 2311.9338,-745.9619,131.2116)) {
        return 1;
	} else if(IsPlayerInRangeOfPoint(playerid, 12.0, 2324.7158,-752.8650,131.4028) || IsPlayerInRangeOfPoint(playerid, 12.0, 2341.4116,-751.3868,130.6202)) {
	    return 1;
	}
	return 0;
}

new const Float:lumberPositions[][] =
{
    {2348.6545, -683.6923, 133.6480},
	{2329.5427, -724.5271, 130.9375},
	{2331.0425, -739.7442, 131.4731},
	{2311.9338, -745.9619, 131.2116},
	{2324.7158, -752.8650, 131.4028},
	{2341.4116, -751.3868, 130.6202}
};

new const Float:minerPositions[][] =
{
    {-995.2590,-2150.3672,35.3247}
/*    {1250.1315,-1251.8857,13.6803}
    {1244.8136,-1267.3768,14.0674}
    {1235.3142,-1250.9010,19.2036}*/
};

new const Float:constructionPositions[][] =
{
    {1249.3019, -1234.3677, 16.5618},
    {1249.0095, -1237.8938, 16.5618},
    {1248.9633, -1246.8964, 14.6885}
};

new const Float:tunePositions[][] =
{
    {2871.3674, -1970.5978, 11.1156},
	{2879.9658, -1970.5823, 11.1156},
	{2879.8804, -2005.4932, 11.2871},
	{2871.2261, -2005.3986, 11.2871},
	{2906.3098, -1971.7324, 11.2890},
	{2906.2214, -1980.4241, 11.2492},
	{2905.8948, -2005.2623, 11.2492},
	{2896.9768, -2005.3287, 11.2492},
	// new mech
	{1079.4399, -1682.4301, 14.3834},
	{1106.8834, -1682.5731, 14.3834},
	{1116.4512, -1682.6189, 14.3834},
	{1117.6520, -1666.7465, 14.3834},
	{1107.7856, -1666.2285, 14.3834},
	{1098.0171, -1665.4329, 14.3834}
};

new const Float:hospitalspawns[][] =
{
	{1248.3483,-1305.1841,1061.8671,359.0843},
	{1251.1227,-1305.3696,1061.8671,359.1210},
	{1251.0936,-1299.2771,1061.8671,177.0752},
	{1248.3824,-1299.3326,1061.8671,174.5658}
};
new const Float:paintballSpawns[][] =
{
    {1291.2968, -0.1334, 1001.0228, 180.0000},
    {1304.6259, -28.7442, 1001.0326, 90.0000},
    {1260.6687, -0.6802, 1001.0234, 180.0000},
    {1251.9862, -26.3548, 1001.0340, 270.0000},
    {1278.8584, -44.1545, 1001.0236, 0.0000},
    {1256.5944, -61.9047, 1002.4999, 0.0000},
    {1297.3204, -61.4144, 1002.4980, 0.0000}
};
new const Float:paintballSpawns2[][] =
{
    {-1131.3846, 1057.6608, 1346.4154, 180.0000},
    {-973.9039, 1061.1886, 1345.6735, 90.0000},
    {-1029.9678, 1078.2313, 1343.1923, 180.0000},
    {-1081.4565, 1046.7002, 1343.4420, 270.0000},
    {-1058.2207, 1061.1597, 1343.9259, 0.0000}
};
new const Float:drivingTestCPs[][] =
{
	{1896.0776,-1872.4663,13.6535},
	{1949.5150,-1883.1516,13.5480},
	{1959.8834,-1921.1361,13.3828},
	{2081.0989,-1932.9579,13.3351},
	{2083.9829,-1825.6085,13.3828},
	{2071.0330,-1750.1631,13.3875},
	{1897.8947,-1750.3020,13.3828},
	{1764.6451,-1730.5005,13.3828},
	{1686.6196,-1750.0946,13.3887},
	{1670.1643,-1868.7015,13.3828},
	{1588.8304,-1869.2865,13.3828},
	{1571.7354,-1745.4026,13.3828},
	{1490.6664,-1732.1334,13.3828},
	{1385.8463,-1754.1119,13.3828},
	{1410.3352,-1874.6240,13.3828},
	{1671.4656,-1872.1935,13.3828},
	{1709.5328,-1814.5006,13.3618},
	{1818.7522,-1845.0452,13.4141},
	{1833.8029,-1883.6827,13.4194},
	{1840.7888,-1464.4016,13.0466},
	{1833.0226,-1535.0470,13.0339},
	{1873.9573,-1848.7241,13.2740}
};

new const Float:cellPositions[][] =
{
	{1205.69995117, -1328.09997559, 797.00000000, 1205.699951, -1326.500000, 797.000000},
	{1205.69995117, -1331.30004883, 797.00000000, 1205.699951, -1329.700073, 797.000000},
	{1205.69995117, -1331.30004883, 800.50000000, 1205.699951, -1329.700073, 800.500000},
	{1205.69995117, -1328.09997559, 800.50000000, 1205.699951, -1326.500000, 800.500000},
	{1215.30004883, -1328.09997559, 797.00000000, 1215.300048, -1326.500000, 797.000000},
	{1215.30004883, -1331.30004883, 797.00000000, 1215.300048, -1329.700073, 797.000000},
	{1215.30004883, -1331.30004883, 800.50000000, 1215.300048, -1329.700073, 800.500000},
	{1215.30004883, -1328.09997559, 800.50000000, 1215.300048, -1326.500000, 800.500000},
	{1215.30004883, -1334.50000000, 797.00000000, 1215.300048, -1332.900024, 797.000000},
	{1215.29980469, -1337.69921875, 797.00000000, 1215.299804, -1336.099243, 797.000000},
	{1215.30004883, -1340.90002441, 797.00000000, 1215.300048, -1339.300048, 797.000000},
	{1215.30004883, -1340.90002441, 800.50000000, 1215.300048, -1339.300048, 800.500000},
	{1215.30004883, -1337.69995117, 800.50000000, 1215.300048, -1336.099975, 800.500000},
	{1215.30004883, -1334.50000000, 800.50000000, 1215.300048, -1332.900024, 800.500000},
	{1205.69995117, -1334.50000000, 800.50000000, 1205.699951, -1332.900024, 800.500000},
	{1205.69995117, -1337.69995117, 800.50000000, 1205.699951, -1336.099975, 800.500000},
	{1205.69995117, -1340.90002441, 800.50000000, 1205.699951, -1339.300048, 800.500000},
	{1205.69995117, -1334.50000000, 797.00000000, 1205.699951, -1332.900024, 797.000000},
	{1205.69995117, -1337.69995117, 797.00000000, 1205.699951, -1336.099975, 797.000000},
	{1205.69995117, -1340.90002441, 797.00000000, 1205.699951, -1339.300048, 797.000000},
	{1215.30004883, -1344.09997559, 800.50000000, 1215.300048, -1342.500000, 800.500000},
	{1215.30004883, -1344.09997559, 797.00000000, 1215.300048, -1342.500000, 797.000000},
	{1205.69995117, -1344.09997559, 800.50000000, 1205.699951, -1342.500000, 800.500000},
	{1205.69995117, -1344.09997559, 797.00000000, 1205.699951, -1342.500000, 797.000000}
};

/*new const Float:arrestPoints[][] =
{
    {1613.1093,1605.6957,10.8359}
};*/
new const Float:cellSpawns[][] =
{
    {257.6978, 1422.2574, 11.3614,0.0000}
};
new const Float:highcellSpawns[][] =
{
	{1778.6372, -1563.9789, 1734.9430,180.0000},
	{1774.3923, -1562.9175, 1734.9430,180.0000},
	{1770.0850, -1563.0596, 1734.9430,180.0000},
	{1765.6075, -1562.8074, 1734.9430,180.0000},
	{1761.2789, -1562.9852, 1734.9430,180.0000},
	{1757.2704, -1563.8149, 1734.9430,180.0000},
	{1757.2209, -1582.5867, 1734.9430,360.0000},
	{1761.4663, -1583.1366, 1734.9430,360.0000},
	{1765.7515, -1582.8560, 1734.9430,360.0000},
	{1770.1416, -1582.5586, 1734.9430,360.0000},
	{1774.2100, -1582.7510, 1734.9430,360.0000},
	{1778.4685, -1582.8289, 1734.9430,360.0000}
};

new const Float:comservpoint[][] =
{
	{164.4852, 1411.9709, 10.0400},
	{171.8608, 1412.1893, 10.0400},
	{178.8711, 1411.6576, 10.040},
	{182.6610, 1417.8778, 10.0400},
	{173.4862, 1419.2832, 10.0400},
	{161.2224, 1420.6794, 10.0400}
};
new const Float:warehousepoint[][] =
{
	{2569.2212, -1280.9657, 1031.0051},
	{2573.0366, -1281.0332, 1031.0051},
	{2571.3652, -1288.7986, 1031.0051}
};
new const factionTypes[][] =
{
	{"Civilian"},
	{"Law enforcement"},
	{"Medical & fire"},
	{"News agency"},
	{"Government"},
	{"Hitman agency"},
	{"Federal police"},
	{"Mechanic"},
	{"Doc"},
	{"Sheriff"}
};

new const deployableItems[][] =
{
	{"Spikestrip"},
	{"Traffic cone"},
	{"Roadblock"},
	{"Barrel"},
	{"Smoke flare"}
};

new const clothingTypes[][] =
{
	{"Glasses"},
	{"Bandanas & masks"},
	{"Hats & caps"},
	{"Misc clothing"}
};

enum clothingEnum
{
	clothingType[20],
	clothingName[32],
	clothingModel,
	clothingBone
};

new const clothingArray[][clothingEnum] =
{
    {"Glasses",		        "Red tinted shades",        19006, 2},
    {"Glasses",		        "Brown tinted shades",      19007, 2},
    {"Glasses",		        "Green tinted shades",      19008, 2},
    {"Glasses",		        "Blue tinted shades",       19009, 2},
    {"Glasses",		        "Pink tinted shades",       19010, 2},
    {"Glasses",		        "Spiralled shades",         19011, 2},
    {"Glasses",		        "Black tinted shades",      19012, 2},
    {"Glasses",		        "Gag glasses",       	    19013, 2},
    {"Glasses",		        "Checkered shades",         19014, 2},
    {"Glasses",		        "Reading glasses",    	    19015, 2},
    {"Glasses",		        "X-Ray glasses",            19016, 2},
    {"Glasses",		        "Plastic black shades",     19017, 2},
    {"Glasses",		        "Plastic orange shades",    19018, 2},
    {"Glasses",		        "Plastic red shades",       19019, 2},
    {"Glasses",		        "Plastic blue shades",      19020, 2},
    {"Glasses",		        "Plastic green shades",     19021, 2},
    {"Glasses",		        "Clear sunglasses",         19022, 2},
    {"Glasses",		        "Blue sunglasses",          19023, 2},
    {"Glasses",		        "Purple sunglasses",        19024, 2},
    {"Glasses",		        "Pink sunglasses",          19025, 2},
    {"Glasses",		        "Red sunglasses",           19026, 2},
    {"Glasses",		        "Brown sunglasses",         19027, 2},
    {"Glasses",		        "Yellow sunglasses",        19028, 2},
    {"Glasses",		        "Green sunglasses",         19029, 2},
    {"Glasses",		        "Plain brown shades",       19030, 2},
    {"Glasses",		        "Plain yellow shades",      19031, 2},
    {"Glasses",		        "Plain red shades",         19032, 2},
    {"Glasses",		        "Plain black shades",       19033, 2},
    {"Glasses",		        "Checkered glasses",        19034, 2},
    {"Glasses",		        "Wavy glasses",             19035, 2},
    {"Bandanas & masks",	"Balaclava", 			    19801, 2},
    {"Bandanas & masks",	"Dark blue bandana", 	   	18891, 2},
    {"Bandanas & masks",	"Red bandana", 			   	18892, 2},
    {"Bandanas & masks",	"Red & white bandana", 	   	18893, 2},
    {"Bandanas & masks",	"Orange star bandana", 	   	18894, 2},
    {"Bandanas & masks",	"Skull bandana", 		   	18895, 2},
    {"Bandanas & masks",	"Black bandana", 		   	18896, 2},
    {"Bandanas & masks",	"Blue bandana", 		   	18897, 2},
    {"Bandanas & masks",	"Green bandana", 		   	18898, 2},
    {"Bandanas & masks",	"Pink bandana", 		   	18899, 2},
    {"Bandanas & masks",	"Hippie bandana", 		   	18900, 2},
    {"Bandanas & masks",	"Tiger bandana", 		   	18901, 2},
    {"Bandanas & masks",	"Yellow bandana",		   	18902, 2},
    {"Bandanas & masks",	"Purple bandana", 		   	18903, 2},
    {"Bandanas & masks",	"Cool blue bandana", 	   	18904, 2},
    {"Bandanas & masks",	"Brown bandana", 		   	18905, 2},
    {"Bandanas & masks",	"Skull bandana mask", 	   	18911, 2},
    {"Bandanas & masks",	"Black bandana mask", 	   	18912, 2},
    {"Bandanas & masks",	"Grove bandana mask", 	   	18913, 2},
    {"Bandanas & masks",	"Camo bandana mask", 	   	18914, 2},
    {"Bandanas & masks",	"Hippie bandana mask", 	   	18915, 2},
    {"Bandanas & masks",	"Yellow bandana mask", 	   	18916, 2},
    {"Bandanas & masks",	"Blue bandana mask", 	   	18917, 2},
    {"Bandanas & masks",	"Green bandana mask", 	   	18918, 2},
    {"Bandanas & masks",	"White bandana mask", 	   	18919, 2},
    {"Bandanas & masks",	"Flower bandana mask", 	   	18920, 2},
    {"Bandanas & masks",	"White hockey mask", 	    19036, 2},
	{"Bandanas & masks",	"Red hockey mask", 		    19037, 2},
	{"Bandanas & masks",	"Green hockey mask", 	    19038, 2},
	{"Bandanas & masks",	"Sexy mask", 			    19557, 2},
	{"Bandanas & masks",	"Devil mask", 			   	11704, 2},
	{"Bandanas & masks",	"Gas mask", 			    19472, 2},
	{"Bandanas & masks",	"Zorro mask", 			   	18974, 2},
	{"Bandanas & masks",	"Gimp mask", 			    19163, 2},
	{"Hats & caps",         "Santa hat",                19064, 2},
    {"Hats & caps",			"Dude hat", 			    19160, 2},
	{"Hats & caps",			"Top hat", 				    19352, 2},
    {"Hats & caps",			"Witch hat",                19528, 2},
    {"Hats & caps",			"Yellow fire hat", 		    19330, 2},
	{"Hats & caps",			"Black fire hat", 	  	    19331, 2},
	{"Hats & caps",			"Black beret", 			   	18921, 2},
    {"Hats & caps",			"Brown beret", 			   	18922, 2},
    {"Hats & caps",			"Blue beret", 			   	18923, 2},
    {"Hats & caps",			"Camo beret", 			   	18924, 2},
    {"Hats & caps",			"Red beret", 			   	18925, 2},
    {"Hats & caps",			"Camo cap", 			   	18926, 2},
    {"Hats & caps",			"Wave cap", 			   	18927, 2},
    {"Hats & caps",			"Hippy cap", 			   	18928, 2},
    {"Hats & caps",			"Green cap", 			   	18929, 2},
    {"Hats & caps",			"Red cap", 				   	18930, 2},
    {"Hats & caps",			"Blue cap", 			  	18931, 2},
    {"Hats & caps",			"Orange cap", 			   	18932, 2},
    {"Hats & caps",			"White cap", 			   	18933, 2},
    {"Hats & caps",			"Plain pink cap", 		   	18934, 2},
    {"Hats & caps",			"Plain yellow cap", 	   	18935, 2},
    {"Hats & caps",			"Blue back cap", 		   	18939, 2},
    {"Hats & caps",			"Wave back cap", 		   	18940, 2},
    {"Hats & caps",			"Black back cap", 		   	18941, 2},
    {"Hats & caps",			"White back cap", 		   	18942, 2},
    {"Hats & caps",			"Green back cap", 		   	18943, 2},
    {"Hats & caps",			"Red boater hat", 		   	18944, 2},
    {"Hats & caps",			"Green boater hat", 	   	18945, 2},
    {"Hats & caps",			"Striped boater hat", 	   	18946, 2},
    {"Hats & caps",			"Black bowler hat", 	   	18947, 2},
    {"Hats & caps",			"White bowler hat",		    19488, 2},
    {"Hats & caps",			"Blue bowler hat", 		   	18948, 2},
    {"Hats & caps",			"Green bowler hat", 	   	18949, 2},
    {"Hats & caps",			"Red bowler hat", 		   	18950, 2},
    {"Hats & caps",			"Yellow bowler hat", 	   	18951, 2},
    {"Hats & caps",			"Black knit cap", 		   	18953, 2},
    {"Hats & caps",			"White knit cap", 		   	18954, 2},
    {"Hats & caps",			"Hippie hat", 			   	18960, 2},
    {"Hats & caps",			"Born 2 truck hat", 	   	18961, 2},
    {"Hats & caps",			"Brown cowboy hat", 	    19098, 2},
	{"Hats & caps",			"Black cowboy hat",		    19096, 2},
    {"Hats & caps",			"Skully cap", 			   	18964, 2},
    {"Hats & caps",			"Black bucket hat", 	   	18967, 2},
    {"Hats & caps",			"Plaid bucket hat", 	   	18968, 2},
    {"Hats & caps",			"Zig-Zag bucket hat", 	   	18969, 2},
    {"Hats & caps",			"Camo bucket hat", 		    19106, 2},
    {"Hats & caps",			"Hippy hat", 			    19113, 2},
    {"Hats & caps",			"Don't shoot me hat", 	    19114, 2},
    {"Hats & caps",			"Skull hat", 			    19115, 2},
    {"Hats & caps",			"Tiger hat", 			   	18970, 2},
    {"Hats & caps",			"Hard hat", 			   	18638, 2},
	{"Hats & caps",			"Straw hat", 			    19553, 2},
	{"Hats & caps",			"Pizza hat", 			    19558, 2},
	{"Hats & caps",			"Beanie hat", 			    19554, 2},
    {"Hats & caps",			"Checkered fedora", 	   	18971, 2},
    {"Hats & caps",			"Orange fedora", 		   	18972, 2},
    {"Hats & caps",			"Yellow fedora", 		   	18973, 2},
    {"Hats & caps",			"Camoflauge helmet", 	    19101, 2},
    {"Hats & caps",			"Black helmet", 		    19116, 2},
    {"Hats & caps",			"Red helmet", 			    19117, 2},
    {"Hats & caps",			"Green helmet",	 		    19118, 2},
    {"Hats & caps",			"Blue helmet", 			    19119, 2},
    {"Hats & caps",			"Yellow helmet", 		    19120, 2},
    {"Hats & caps",			"Boxing helmet", 		   	18952, 2},
    {"Hats & caps",			"Motorcycle helmet",   	   	18645, 2},
    {"Misc clothing",	    "Gold watch",	 			19039, 6},
	{"Misc clothing",	    "Silver watch", 			19040, 6},
	{"Misc clothing",	    "Bronze watch", 			19041, 6},
	{"Misc clothing",	    "Yellow watch", 			19042, 6},
	{"Misc clothing",	    "White watch", 			 	19043, 6},
	{"Misc clothing",	    "Purple watch", 			19044, 6},
	{"Misc clothing",	    "Pink watch", 				19045, 6},
	{"Misc clothing",	    "Green watch", 			 	19046, 6},
	{"Misc clothing",	    "Blue watch", 				19047, 6},
	{"Misc clothing",	    "Camo watch", 				19053, 6},
	{"Misc clothing",	    "White headphones", 		19421, 2},
    {"Misc clothing",	    "Black headphones", 		19422, 2},
    {"Misc clothing",	    "Orange headphones", 		19423, 2},
    {"Misc clothing",	    "Blue headphones", 		 	19424, 2},
	{"Misc clothing",	    "Red clown hair", 			19274, 2},
    {"Misc clothing",	    "Grey clown hair", 		 	19518, 2},
    {"Misc clothing",	    "Black hair", 				19077, 2},
    {"Misc clothing",	    "Grey hair", 				19517, 2},
	{"Misc clothing",	    "Bass guitar", 			 	19317, 1},
	{"Misc clothing",	    "White guitar", 		 	19318, 1},
	{"Misc clothing",	    "Black guitar", 			19319, 1},
	{"Misc clothing",	    "Pilot hat", 				19520, 2},
	{"Misc clothing",       "Bag of money",             1550,  1},
	{"Misc clothing",	    "Shop basket", 			 	19592, 6},
	{"Misc clothing",	    "Oil can", 				 	19621, 6},
	{"Misc clothing",	    "Broom", 				 	19622, 1},
	{"Misc clothing",	    "Camera", 					19623, 6},
	{"Misc clothing",	    "Briefcase", 				19624, 6},
	{"Misc clothing",	    "Cigarette", 				19625, 2},
	{"Misc clothing",	    "Spade", 					19626, 1},
	{"Misc clothing",	    "Left boxing glove", 		19555, 5},
	{"Misc clothing",	    "Right boxing glove", 		19556, 6},
	{"Misc clothing",	    "Scarf", 					19469, 2},
	{"Misc clothing",	    "Eye patch", 				19085, 2},
	{"Misc clothing",	    "Hiker backpack", 			19559, 1},
	{"Misc clothing",	    "Construction vest", 		19904, 1},
	{"Misc clothing",	    "Police radio", 			19942, 1},
	{"Misc clothing",	    "Bodybag", 				 	19944, 1},
	{"Misc clothing",	    "Sports bag", 				11745, 1},
	{"Misc clothing",	    "Holster", 				 	19773, 8},
    {"Misc clothing",	    "Fedora", 					18639, 2},
    {"Misc clothing",	    "Afro", 					18640, 2},
    {"Misc clothing",	    "Flashlight",          		18641, 6},
    {"Misc clothing",	    "Hammer",              		18635, 6},
    {"Misc clothing",	    "Wrench",              		18633, 2},
    {"Misc clothing",       "Katana",                   3028,  2},
    {"Misc clothinh",       "SWATArmour",               19142, 2}
};

enum copEnum
{
	cModel,
	cBone,
	cName[24]
};
new const copClothing[][copEnum] =
{
	{18636, 2, "Police cap"},
	{19521, 2, "Police hat"},
	{19099, 2, "Black rim hat"},
	{19100, 2, "Brown rim hat"},
	{19139, 2, "Red shades"},
	{19140, 2, "Blue shades"},
	{19138, 2, "Black shades"},
	{19774, 1, "Badge"},
	{19942, 1, "Radio"},
	{19162, 2, "Blue cap"},
	{19161, 2, "Black cap"},
	{19200, 2, "Bike helmet"},
	{18637, 1, "Riot shield"},
	{19141, 2, "SWAT helmet"},
	{19142, 1, "SWAT armor"},
	{19515, 1, "Grey armor"},
	{19514, 2, "Grey helmet"},
	{19777, 1, "FBI insignia"},
	{19776, 1, "FBI ID card"},
	{18642, 1, "Taser"},
	{18641, 1, "Flashlight"},
	{11749, 1, "Handcuffs"},
	{11750, 1, "Closed cuff"},
	{19783, 1, "Police badge"},
	{19784, 1, "Police badge 2"},
	{19785, 1, "Senior Ld. badge"},
	{19778, 1, "Detective badge"},
	{19779, 1, "Detective badge 2"},
	{19780, 1, "Detective badge 3"},
	{19781, 1, "Sergeant badge"},
	{19782, 1, "Sergeant badge 2"}
};
enum carEnum
{
	carCategory[16],
	carModel,
	carPrice
};

new const vehicleArray[][carEnum] =
{
	//Category           //MODEL //PRICE
	{"Bikes",       	462, 12250},
	{"Bikes",       	510, 8750},
	{"Bikes",       	481, 17500},
	{"Bikes",       	471, 43750},
	{"Bikes",       	468, 52500},
	{"Bikes",       	586, 29750},
	{"Bikes",       	463, 61250},
	{"Bikes",       	521, 26250},
	{"Bikes",       	461, 35000},
	{"Saloons",     	549, 33250},
	{"Saloons",     	542, 54250},
	{"Saloons",     	546, 40250},
	{"Saloons",     	517, 42000},
	{"Saloons",     	419, 26250},
	{"Saloons",     	466, 29750},
	{"Saloons",     	467, 43750},
	{"Saloons",     	475, 47250},
	{"Saloons",     	492, 38500},
	{"Saloons",     	445, 29750},
	{"Saloons",     	529, 26250},
	{"Saloons",     	540, 28000},
	{"Saloons",     	550, 28400},
	{"Saloons",     	421, 22750},
	{"Saloons",     	551, 29750},
	{"Saloons",     	547, 33250},
	{"Saloons",     	426, 87500},
	{"Saloons",         409, 525000},
	{"Saloons",     	580, 42000},
	{"Off-Road",    	500, 612500},
	{"Off-Road",    	400, 26250},
	{"Off-Road",    	489, 43750},
	{"Off-Road",    	495, 700000},
	{"Off-Road",    	579, 43750},
	{"Station wagons",  418, 45500},
	{"Station wagons",  404, 43400},
	{"Station wagons",  479, 47250},
	{"Station wagons",  458, 52500},
	{"Station wagons",  561, 49000},
	{"Lowriders",       412, 43750},
	{"Lowriders",       576, 45500},
	{"Lowriders",       534, 50750},
	{"Lowriders",       566, 52500},
	{"Lowriders",       536, 42000},
	{"Lowriders",       567, 49000},
	{"Lowriders",       575, 50750},
	//{"Sports cars",     560, 875000},
	{"Sports Car",      402, 700000},
	{"Sports Car",      603, 665000},
	{"Sports Car",      480, 350000},
	{"Sports Car",      429, 700000},
	{"Industrial",      478, 29750},
	{"Industrial",      543, 28000},
	{"Industrial",      600, 22750},
	{"Industrial",      422, 21000},
	{"Industrial",      413, 29750},
	{"Industrial",      440, 31500},
	{"Industrial",      554, 35000},
	{"Industrial",      482, 43750},
	{"Industrial",      414, 45500},
	{"Industrial",      498, 38500}
};


enum bizInts
{
	intName[32],
	intID,
	Float:intX,
	Float:intY,
	Float:intZ,
	Float:intA
};

new const bizInteriorArray[][bizInts] =
{
	{"24/7 (Version 1)", 		17, -25.9733, -187.8952, 1003.5468, 0.0000},
    {"24/7 (Version 2)", 		10, 6.0159, -31.0345, 1003.5493, 0.0000},
    {"24/7 (Version 3)", 		18, -30.9967, -91.4492, 1003.5468, 0.0000},
    {"24/7 (Version 4)", 		16, -25.9416, -140.6656, 1003.5468, 0.0000},
    {"24/7 (Version 5)", 		4, 	-27.3069, -30.8341, 1003.5573, 0.0000},
    {"24/7 (Version 6)", 		6, 	-27.4368, -57.4361, 1003.5468, 0.0000},
    {"Ammunation (Version 1)", 	7, 	315.7398, -143.1958, 999.6016, 0.0000},
    {"Ammunation (Version 2)", 	1, 	285.3190, -41.1576, 1001.5156, 0.0000},
    {"Ammunation (Version 3)", 	4, 	285.7825, -85.9860, 1001.5228, 0.0000},
    {"Ammunation (Version 4)", 	6, 	296.7723, -111.6399, 1001.5156, 0.0000},
    {"Ammunation (version 5)", 	6, 	316.2890, -169.7619, 999.6010, 0.0000},
    {"Binco", 					15, 207.6329, -110.7673, 1005.1328, 0.0000},
    {"Pro-Laps", 				3, 	206.9459, -139.5319, 1003.5078, 0.0000},
    {"Didier Sachs", 			14,	204.2969, -168.3488, 1000.5233, 0.0000},
    {"Victim", 					5, 	226.7738, -8.2257, 1002.2108, 90.0000},
    {"Zip", 					18, 161.3670, -96.4953, 1001.8046, 0.0000},
    {"SubUrban", 				1, 	203.7149, -50.2200, 1001.8046, 0.0000},
    {"Betting (Version 1)", 	3,  834.1848, 7.3453, 1004.1870, 90.0000},
	{"Betting (Version 2)",     1,  -2170.3428, 640.7771, 1052.3817, 0.0000},
	{"Donut Shop", 				17, 377.0733, -193.0574, 1000.6400, 0.0000},
    {"Burger Shot", 			10, 363.1346, -74.8441, 1001.5078, 315.0000},
    {"Pizza Stack", 			5, 	372.3019, -133.1221, 1001.4921, 0.0000},
    {"Cluckin' Bell", 			9, 	364.8536, -11.1400, 1001.8516, 0.0000},
	{"Marco's Bistro",          1,  -795.0334, 489.8574, 1376.1953, 0.0000},
	{"Cafeteria",               4,  459.7685, -88.6637, 999.5547, 90.0000},
    {"Barber Shop", 			3, 	418.5545, -83.9392, 1001.8046, 0.0000},
    {"Tattoo Shop", 			3, 	-204.4362, -43.8119, 1002.2733, 0.0000},
    {"Ganton Gym", 				5, 	772.2800, -4.7154, 1000.7288, 0.0000},
    {"Las Venturas Gym", 		7, 	773.8508, -78.3952, 1000.6621, 0.0000},
    {"San Fierro Gym", 			6, 	774.1206, -49.9538, 1000.5858, 0.0000},
    {"Sex Shop", 				3, 	-100.3628, -24.4456, 1000.7188, 0.0000},
    {"RC Shop", 				6, 	-2240.3610, 128.2816, 1035.4210, 270.0000},
    {"Four Dragons Casino", 	10, 2018.2132, 1017.7788, 996.8750, 90.0000},
    {"Caligulas Casino", 		1, 	2234.0485, 1714.1568, 1012.3596, 180.0000},
    {"Red Sands Casino", 		12, 1133.1075, -15.3114, 1000.6796, 0.0000},
    {"Alhambra", 				17, 493.3728, -23.9953, 1000.6796, 0.0000},
    {"Pig Pen", 				2, 	1204.7922, -13.2587, 1000.9218, 0.0000},
    {"Big Spread Ranch", 		3, 	1212.1400, -26.3005, 1000.9531, 180.0000},
    {"Ten Green Bottles", 		11, 501.9559, -67.9867, 998.7578, 180.0000},
    {"Lil' Probe Inn",          18, -228.7570, 1401.2421, 27.7656, 270.0000},
    {"Warehouse",               18, 1307.0178, 4.1193, 1001.0289, 90.0000}
};

enum intEnum
{
    intName[32],
    intID,
    Float:intX,
    Float:intY,
    Float:intZ,
    Float:intA
}

new const interiorArray[][intEnum] =
{
    {"24/7 (Version 1)", 17, -25.7220, -187.8215, 1003.5468, 5.0760},
    {"24/7 (Version 2)", 10, 6.0854, -28.8966, 1003.5493, 5.0363},
    {"24/7 (Version 3)", 18, -30.9874, -89.6806, 1003.5468, 359.8399},
    {"24/7 (Version 4)", 16, -26.1856, -140.9163, 1003.5468, 2.9086},
    {"24/7 (Version 5)", 4, -27.8439, -26.6737, 1003.5573, 184.3117},
    {"24/7 (Version 6)", 6, -26.8339, -55.5844, 1003.5468, 3.9528},
    {"8-Track Stadium", 7, -1403.0114, -250.4526, 1043.5340, 355.8576},
    {"Abandoned AC Tower", 10, 419.8934, 2537.1154, 10.0000, 67.6537},
    {"Ammunation (Version 1)", 7, 315.2438, -140.8858, 999.6016, 7.4225},
    {"Ammunation (Version 2)", 1, 285.8359, -39.0166, 1001.5156, 0.7529},
    {"Ammunation (Version 3)", 4, 291.7626, -80.1305, 1001.5156, 290.2195},
    {"Ammunation (Version 4)", 6, 297.1440, -109.8702, 1001.5156, 20.2254},
    {"Ammunation (Version 5)", 6, 316.5025, -167.6271, 999.5938, 10.3030},
    {"Andromada", 9, 315.4544, 976.5972, 1960.8509, 359.6368},
    {"Angel Pine Trailer", 2, 1.1851, -3.2386, 999.4284, 87.5718},
    {"Area 69", 0, 215.1515, 1874.0577, 13.1406, 177.5538},
    {"Atrium", 18, 1727.2851, -1642.9449, 20.2254, 172.4192},
    {"B Dup's Apartment", 3, 1527.0467, -12.0235, 1002.0971, 350.0013},
    {"B Dup's Crack Palace", 2, 1523.5096, -47.8209, 1002.2697, 262.7037},
    {"Bar", 11, 501.9577, -70.5646, 998.7578, 171.5706},
    {"Barbara's Love nest", 5, 322.5014, 303.6906, 999.1483, 8.1745},
    {"Barber Shop (version 1)", 3, 418.4666, -80.4595, 1001.8046, 343.2358},
    {"Barber Shop (version 2)", 12, 411.9707, -51.9216, 1001.8983, 173.3448},
    {"Barber Shop (version 3)", 2, 414.2987, -18.8043, 1001.8046, 41.4263},
    {"Big Smoke's Crack Palace", 2, 2536.5322, -1294.8425, 1044.1250, 254.9548},
    {"Bike School (version 1)", 3, 1494.8587, 1306.4798, 1093.2951, 196.0650},
    {"Bike School (version 2)", 0, 1168.5118, 1360.1145, 10.9293, 196.5933},
    {"Binco", 15, 207.5218, -109.7446, 1005.1328, 358.6199},
    {"Blastin' Fools Records", 3, 1037.8276, 0.3970, 1001.2844, 353.9335},
    {"Blood Bowl Stadium", 15, -1417.8927, 932.4481, 1041.5312, 0.7013},
    {"Blueberry Liquor Store", 0, 255.2082, -59.6753, 1.5701, 1.4644},
    {"Brothel 1", 3, 974.0177, -9.5937, 1001.1483, 22.6044},
    {"Brothel 2", 3, 961.9307, -51.9071, 1001.1171, 95.5381},
    {"Budget Inn Motel Room", 12, 446.3247, 509.9660, 1001.4193, 330.5671},
    {"Burger Shot", 10, 366.0248, -73.3478, 1001.5078, 292.0083},
    {"Burglary House 1", 15, 295.1390, 1473.3719, 1080.2578, 352.9526},
    {"Burglary House 2", 3, 234.6087, 1187.8194, 1080.2578, 349.4844},
    {"Burglary House 3", 5, 227.7559, 1114.3842, 1080.9920, 266.2622},
    {"Burglary House 4", 4, 261.1163, 1287.2197, 1080.2578, 178.9149},
    {"Burglary House 5", 4, 221.6766, 1142.4962, 1082.6092, 184.9618},
    {"Burglary House 6", 10, 24.3768, 1341.1827, 1084.3750, 8.3304},
    {"Burglary House 7", 4, -262.1759, 1456.6158, 1084.3670, 82.4589},
    {"Burglary House 8", 5, 22.8610, 1404.9165, 1084.4295, 349.6158},
    {"Burglary House 9", 5, 140.3679, 1367.8835, 1083.8620, 349.2372},
    {"Burglary House 10", 6, 234.2825, 1065.2290, 1084.2099, 4.3864},
    {"Burglary House 11", 6, -68.5145, 1353.8485, 1080.2109, 3.5741},
    {"Burglary House 12", 2, 225.5706, 1240.0643, 1082.1406, 96.2852},
    {"Burglary House 13", 15, -285.2510, 1471.1970, 1084.3750, 85.6547},
    {"Burglary House 14", 8, -42.5265, 1408.2298, 1084.4295, 172.0679},
    {"Burglary House 15", 9, 84.9244, 1324.2983, 1083.8592, 159.5581},
    {"Burglary House 16", 9, 260.7420, 1238.2259, 1084.2578, 84.3084},
    {"Burglary House 17", 1, 224.2879, 1289.1905, 1082.1406, 359.8680},
    {"Burglary House 18", 5, 239.2819, 1114.1989, 1080.9920, 270.2654},
    {"Burglary House 19", 2, 446.6260, 1397.7380, 1084.3045, 343.9645},
    {"Burning Desire Building", 5, 2350.1596, -1181.0656, 1027.9764, 99.1864},
    {"Caligula's Casino", 1, 2233.9362, 1711.8038, 1011.6312, 184.3890},
    {"Caligula's Roof", 1, 2268.5156, 1647.7680, 1084.2342, 99.7331},
    {"Casino (Redsands West)", 12, 1133.3498, -7.8460, 1000.6796, 165.8482},
    {"Cemetary", 0, 818.7714, -1102.8687, 25.7940, 91.1437},
    {"Club", 17, 493.1441, -24.2607, 1000.6796, 356.9862},
    {"Cluckin' Bell", 9, 366.0002, -9.4336, 1001.8516, 160.5278},
    {"Cobra Gym", 6, 773.8886, -47.7696, 1000.5858, 10.7159},
    {"Colonel Furhberger's", 8, 2807.3603, -1171.7048, 1025.5703, 193.7117},
    {"Crack Den", 5, 227.3921, 1114.6572, 1080.9985, 267.4590},
    {"Denise's Bedroom", 1, 245.2306, 304.7632, 999.1483, 273.4364},
    {"Didier Sachs", 14, 204.1658, -165.7678, 1000.5233, 181.7583},
    {"Dillimore Gas Station", 0, 663.0587, -573.6273, 16.3358, 264.9829},
    {"Diner 1", 5, 454.9851, -107.2546, 999.4376, 309.0195},
    {"Dirtbike Stadium", 4, -1421.5616, -663.8261, 1059.5567, 170.9340},
    {"Driving School", 3, -2031.1196, -115.8285, 1035.1717, 190.1876},
    {"Fanny Batter's Whore House", 6, 748.4622, 1438.2376, 1102.9531, 0.6068},
    {"Four Dragons", 10, 2016.1156, 1017.1541, 996.8750, 88.0055},
    {"Francis International Airport", 14, -1813.2130, -58.0120, 1058.9641, 335.3197},
    {"Ganton Gym", 5, 770.8032, -0.7031, 1000.7266, 22.8598},
    {"Helena's Barn", 3, 290.6228, 309.0621, 999.1483, 89.9162},
    {"Inside Track Betting", 3, 830.6016, 5.9404, 1004.1796, 125.8149},
    {"Jay's Diner", 4, 449.0172, -88.9894, 999.5546, 89.6606},
    {"Jefferson Motel", 15, 2217.2810, -1150.5349, 1025.7967, 273.7326},
    {"Jet Interior", 1, 1.5491, 23.3183, 1199.5937, 359.9053},
    {"K.A.C.C. Military Fuels Depot", 0, 2548.4807, 2823.7429, 10.8203, 270.6003},
    {"Katie's Lovenest", 2, 269.6405, 305.9512, 999.1483, 215.6625},
    {"Kickstart Stadium", 14, -1420.4277, 1616.9221, 1052.5312, 159.1255},
    {"Las Venturas Gym", 7, 773.7318, -74.6957, 1000.6541, 5.2304},
    {"Las Venturas Police Department", 3, 288.4721, 170.0646, 1007.1793, 22.0477},
    {"Las Venturas Tattoo parlor", 3, -201.2236, -43.2463, 1002.2733, 45.8613},
    {"Liberty City", 1, -741.8494, 493.0036, 1371.9764, 71.7780},
    {"Lil' Probe Inn", 18, -227.5702, 1401.5544, 27.7656, 269.2976},
    {"Loco Low Co", 2, 611.3535, -77.5574, 997.9995, 320.9263},
    {"Los Santos Airport", 14, -1864.9433, 55.7323, 1055.5274, 85.8541},
    {"Los Santos Police Department", 6, 246.6694, 65.8039, 1003.6406, 7.9562},
    {"Los Santos Tattoo Parlor", 16, -202.8419, -24.0324, 1002.2733, 252.8153},
    {"Lost San Fierro Tattoo parlor", 17, -202.9380, -6.7006, 1002.2733, 204.2693},
    {"Madd Dogg's Mansion", 5, 1267.8405, -776.9586, 1091.9062, 231.3417},
    {"Michelle's Love Nest", 4, 306.1965, 307.8190, 1003.3046, 203.1354},
    {"Millie's Bedroom", 6, 344.9984, 307.1824, 999.1557, 193.6430},
    {"OG Loc's House", 3, 512.9290, -11.6927, 1001.5653, 198.7669},
    {"Old Venturas Strip Casino", 2, 2236.6997, -1078.9477, 1049.0234, 2.5706},
    {"Otto's Autos", 0, -1658.1656, 1215.0002, 7.2500, 103.9074},
    {"Oval Stadium", 1, -1402.6612, 106.3897, 1032.2734, 105.1354},
    {"Palamino Bank", 0, 2306.3825, -15.2363, 26.7495, 274.4898},
    {"Palamino Diner", 0, 2331.8984, 6.7814, 26.5032, 100.2357},
    {"Pizza Stack", 5, 372.5563, -131.3607, 1001.4921, 354.2283},
    {"Planning Department", 3, 386.5259, 173.6381, 1008.3828, 63.7397},
    {"Pro-Laps", 3, 206.4627, -137.7075, 1003.0938, 10.9347},
    {"RC Battlefield", 10, -1129.8907, 1057.5423, 1346.4139, 274.5267},
    {"Rosenberg's Office", 2, 2182.2016, 1628.5848, 1043.8723, 224.8601},
    {"Rusty Brown's Donuts", 17, 378.0260, -190.5155, 1000.6328, 141.0245},
    {"Ryder's House", 2, 2447.8703, -1704.4509, 1013.5078, 314.5252},
    {"Safe House (version 1)", 5, 2233.6918, -1112.8105, 1050.8828, 8.6483},
    {"Safe House (version 2)", 9, 2319.1271, -1023.9561, 1050.2109, 167.3959},
    {"Safe House (version 3)", 10, 2261.0976, -1137.8833, 1050.6328, 266.8800},
    {"San Fierro Garage", 1, -2041.2332, 178.3968, 28.8465, 156.2153},
    {"San Fierro Police Department", 10, 246.0688, 108.9701, 1003.2188, 0.2921},
    {"Secret Valley Diner", 6, 442.1293, -52.4780, 999.7166, 177.9394},
    {"Sex Shop", 3, -100.2674, -22.9375, 1000.7188, 17.2849},
    {"Sherman Dam", 17, -944.2401, 1886.1534, 5.0050, 179.8547},
    {"Sindacco Abatoir", 1, 963.0584, 2159.7563, 1011.0302, 175.3130},
    {"SubUrban", 1, 204.1174, -46.8045, 1001.8046, 357.5776},
    {"Sweet's House", 1, 2527.0175, -1679.2076, 1015.4984, 260.9707},
    {"The Big Spread Ranch", 3, 1212.1489, -28.5387, 1000.9531, 170.5691},
    {"The Camel's Toe Safehouse", 1, 2216.1281, -1076.3050, 1050.4842, 86.4280},
    {"The Johnson House", 3, 2496.0549, -1695.1749, 1014.7421, 179.2174},
    {"The Pig Pen (strip club 2)", 2, 1204.6689, -13.5429, 1000.9218, 350.0202},
    {"The Pleasure Domes", 3, -2638.8232, 1407.3393, 906.4608, 94.6792},
    {"The Welcome Pump", 1, 681.6215, -451.8933, -25.6172, 166.1660},
    {"Torreno's Ranch", 0, -688.1494, 942.0825, 13.6328, 177.6573},
    {"Transfenders", 1, 621.4528, -23.7289, 1000.9218, 15.6787},
    {"Unused Safe House", 12, 2323.7062, -1147.6507, 1050.7099, 206.5352},
    {"Verdant Bluffs Safehouse", 8, 2365.1088, -1133.0793, 1050.8750, 177.3946},
    {"Vice Stadium", 16, -1401.0670, 1265.3706, 1039.8670, 178.6483},
    {"Victim", 5, 225.0305, -9.1836, 1002.2180, 85.5322},
    {"Wang Cars", 0, -1961.6280, 295.2377, 35.4687, 264.4891},
    {"Wardrobe/Changing room", 14, 256.9046, -41.6537, 1002.0233, 85.8774},
    {"Warehouse 1", 18, 1290.4106, 1.9512, 1001.0200, 179.9418},
    {"Warehouse 2", 1, 1412.1472, -2.2836, 1000.9240, 114.6610},
    {"Warehouse 3", 0, 2135.2004, -2276.2814, 20.6718, 318.5899},
    {"Wheel Arch Angels", 3, 612.2191, -123.9028, 997.9921, 266.5704},
    {"Willowfield Safehouse", 11, 2283.3117, 1139.3070, 1050.8984, 19.7031},
    {"World of Coq", 1, 445.6003, -6.9822, 1000.7343, 172.2104},
    {"Wu-Zi Mu's", 1, -2158.6730, 642.0900, 1052.3750, 86.5401},
    {"Zero's RC Shop", 6, -2240.1027, 136.9730, 1035.4139, 269.0953},
    {"Zip", 18, 161.4048, -94.2416, 1001.8046, 0.7936},
    {"Zombotech", 0, -1916.1268, 714.8615, 46.5625, 152.2839}
};

enum radioEnum
{
	rGenre[32],
	rSubgenre[32]
};

new const radioGenreList[][radioEnum] =
{
    {"Alternative", "Alternative"},
    {"Alternative", "Adult Alternative"},
    {"Alternative", "Britpop"},
    {"Alternative", "Classic Alternative"},
    {"Alternative", "College"},
    {"Alternative", "Dancepunk"},
    {"Alternative", "Dream Pop"},
    {"Alternative", "Emo"},
    {"Alternative", "Goth"},
    {"Alternative", "Grunge"},
    {"Alternative", "Hardcore"},
    {"Alternative", "Indie Pop"},
    {"Alternative", "Indie Rock"},
    {"Alternative", "Industrial"},
    {"Alternative", "LoFi"},
    {"Alternative", "Modern Rock"},
    {"Alternative", "New Wave"},
    {"Alternative", "Noise Pop"},
    {"Alternative", "Post Punk"},
    {"Alternative", "Power Pop"},
    {"Alternative", "Punk"},
    {"Alternative", "Ska"},
    {"Alternative", "Xtreme"},
    {"Blues", "Blues"},
    {"Blues", "Acoustic Blues"},
    {"Blues", "Cajun and Zydeco"},
    {"Blues", "Chicago Blues"},
    {"Blues", "Contemporary Blues"},
    {"Blues", "Country Blues"},
    {"Blues", "Delta Blues"},
    {"Blues", "Electric Blues"},
    {"Classical", "Classical"},
    {"Classical", "Baroque"},
    {"Classical", "Chamber"},
    {"Classical", "Choral"},
    {"Classical", "Classical Period"},
    {"Classical", "Early Classical"},
    {"Classical", "Impressionist"},
    {"Classical", "Modern"},
    {"Classical", "Opera"},
    {"Classical", "Piano"},
    {"Classical", "Romantic"},
    {"Classical", "Symphony"},
    {"Country", "Country"},
    {"Country", "Alt Country"},
    {"Country", "Americana"},
    {"Country", "Bluegrass"},
    {"Country", "Classic Country"},
    {"Country", "Contemporary Country"},
    {"Country", "Honky Tonk"},
    {"Country", "Hot Country Hits"},
    {"Country", "Western"},
    {"Decades", "Decades"},
    {"Decades", "00s"},
    {"Decades", "30s"},
    {"Decades", "40s"},
    {"Decades", "50s"},
    {"Decades", "60s"},
    {"Decades", "70s"},
    {"Decades", "80s"},
    {"Decades", "90s"},
    {"Easy Listening", "Easy Listening"},
    {"Easy Listening", "Exotica"},
    {"Easy Listening", "Light Rock"},
    {"Easy Listening", "Lounge"},
    {"Easy Listening", "Orchestral Pop"},
    {"Easy Listening", "Polka"},
    {"Easy Listening", "Space Age Pop"},
    {"Electronic", "Electronic"},
    {"Electronic", "Acid House"},
    {"Electronic", "Ambient"},
    {"Electronic", "Big Beat"},
    {"Electronic", "Breakbeat"},
    {"Electronic", "Dance"},
    {"Electronic", "Demo"},
    {"Electronic", "Disco"},
    {"Electronic", "Downtempo"},
    {"Electronic", "Drum and Bass"},
    {"Electronic", "Dubstep"},
    {"Electronic", "Electro"},
    {"Electronic", "Garage"},
    {"Electronic", "Hard House"},
    {"Electronic", "House"},
    {"Electronic", "IDM"},
    {"Electronic", "Jungle"},
    {"Electronic", "Progressive"},
    {"Electronic", "Techno"},
    {"Electronic", "Trance"},
    {"Electronic", "Tribal"},
    {"Electronic", "Trip Hop"},
    {"Folk", "Folk"},
    {"Folk", "Alternative Folk"},
    {"Folk", "Contemporary Folk"},
    {"Folk", "Folk Rock"},
    {"Folk", "New Acoustic"},
    {"Folk", "Old Time"},
    {"Folk", "Traditional Folk"},
    {"Folk", "World Folk"},
    {"Inspirational", "Inspirational"},
    {"Inspirational", "Christian"},
    {"Inspirational", "Christian Metal"},
    {"Inspirational", "Christian Rap"},
    {"Inspirational", "Christian Rock"},
    {"Inspirational", "Classic Christian"},
    {"Inspirational", "Contemporary Gospel"},
    {"Inspirational", "Gospel"},
    {"Inspirational", "Praise and Worship"},
    {"Inspirational", "Sermon and Services"},
    {"Inspirational", "Southern Gospel"},
    {"Inspirational", "Traditional Gospel"},
    {"International", "International"},
    {"International", "African"},
    {"International", "Afrikaans"},
    {"International", "Arabic"},
    {"International", "Asian"},
    {"International", "Bollywood"},
    {"International", "Brazilian"},
    {"International", "Caribbean"},
    {"International", "Celtic"},
    {"International", "Chinese"},
    {"International", "Creole"},
    {"International", "European"},
    {"International", "Filipino"},
    {"International", "French"},
    {"International", "German"},
    {"International", "Greek"},
    {"International", "Hawaiian & Pacific"},
    {"International", "Hebrew"},
    {"International", "Hindi"},
    {"International", "Indian"},
    {"International", "Islamic"},
    {"International", "Japanese"},
    {"International", "Korean"},
    {"International", "Mediterranean"},
    {"International", "Middle Eastern"},
    {"International", "North American"},
    {"International", "Russian"},
    {"International", "Soca"},
    {"International", "South American"},
    {"International", "Tamil"},
    {"International", "Turkish"},
    {"International", "Worldbeat"},
    {"International", "Zouk"},
    {"Jazz", "Jazz"},
    {"Jazz", "Acid Jazz"},
    {"Jazz", "Naga"},
    {"Jazz", "Big Band"},
    {"Jazz", "Bop"},
    {"Jazz", "Classic Jazz"},
    {"Jazz", "Cool Jazz"},
    {"Jazz", "Fusion"},
    {"Jazz", "Hard Bop"},
    {"Jazz", "Latin Jazz"},
    {"Jazz", "Smooth Jazz"},
    {"Jazz", "Swing"},
    {"Jazz", "Vocal Jazz"},
    {"Jazz", "World Fusion"},
    {"Latin", "Latin"},
    {"Latin", "Bachata"},
    {"Latin", "Banda"},
    {"Latin", "Bossa Nova"},
    {"Latin", "Cumbia"},
    {"Latin", "Flamenco"},
    {"Latin", "Latin Dance"},
    {"Latin", "Latin Pop"},
    {"Latin", "Latin Rap"},
    {"Latin", "Latin Rock"},
    {"Latin", "Mariachi"},
    {"Latin", "Merengue"},
    {"Latin", "Ranchera"},
    {"Latin", "Reggaeton"},
    {"Latin", "Regional Mexican"},
    {"Latin", "Salsa"},
    {"Latin", "Samba"},
    {"Latin", "Tango"},
    {"Latin", "Tejano"},
    {"Latin", "Tropicalia"},
    {"Metal", "Metal"},
    {"Metal", "Black Metal"},
    {"Metal", "Classic Metal"},
    {"Metal", "Death Metal"},
    {"Metal", "Extreme Metal"},
    {"Metal", "Grindcore"},
    {"Metal", "Hair Metal"},
    {"Metal", "Heavy Metal"},
    {"Metal", "Metalcore"},
    {"Metal", "Power Metal"},
    {"Metal", "Progressive Metal"},
    {"Metal", "Thrash Metal"},
    {"Misc", "Misc"},
    {"New Age", "New Age"},
    {"New Age", "Environmental"},
    {"New Age", "Ethnic Fusion"},
    {"New Age", "Healing"},
    {"New Age", "Meditation"},
    {"New Age", "Spiritual"},
    {"Pop", "Pop"},
    {"Pop", "Adult Contemporary"},
    {"Pop", "Barbershop"},
    {"Pop", "Bubblegum Pop"},
    {"Pop", "Dance Pop"},
    {"Pop", "Idols"},
    {"Pop", "JPOP"},
    {"Pop", "KPOP"},
    {"Pop", "Oldies"},
    {"Pop", "Soft Rock"},
    {"Pop", "Teen Pop"},
    {"Pop", "Top 40"},
    {"Pop", "World Pop"},
    {"Public Radio", "Public Radio"},
    {"Public Radio", "College"},
    {"Public Radio", "News"},
    {"Public Radio", "Sports"},
    {"Public Radio", "Talk"},
    {"Public Radio", "Weather"},
    {"R&B and Urban", "R&B and Urban"},
    {"R&B and Urban", "Classic R&B"},
    {"R&B and Urban", "Contemporary R&B"},
    {"R&B and Urban", "Funk"},
    {"R&B and Urban", "Motown"},
    {"R&B and Urban", "Neo Soul"},
    {"R&B and Urban", "Quiet Storm"},
    {"R&B and Urban", "Soul"},
    {"R&B and Urban", "Urban Contemporary"},
    {"Rap", "Rap"},
    {"Rap", "Alternative Rap"},
    {"Rap", "Dirty South"},
    {"Rap", "East Coast Rap"},
    {"Rap", "Freestyle"},
    {"Rap", "Gangsta Rap"},
    {"Rap", "Hip Hop"},
    {"Rap", "Mixtapes"},
    {"Rap", "Old School"},
    {"Rap", "Turntablism"},
    {"Rap", "Underground Hip Hop"},
    {"Rap", "West Coast Rap"},
    {"Reggae", "Reggae"},
    {"Reggae", "Contemporary Reggae"},
    {"Reggae", "Dancehall"},
    {"Reggae", "Dub"},
    {"Reggae", "Pop Reggae"},
    {"Reggae", "Ragga"},
    {"Reggae", "Reggae Roots"},
    {"Reggae", "Rock Steady"},
    {"Rock", "Rock"},
    {"Rock", "Adult Alternative"},
    {"Rock", "Celtic Rock"},
    {"Rock", "Classic Rock"},
    {"Rock", "Garage Rock"},
    {"Rock", "Glam"},
    {"Rock", "Hard Rock"},
    {"Rock", "Jam Bands"},
    {"Rock", "JROCK"},
    {"Rock", "Progressive Rock"},
    {"Rock", "Psychedelic"},
    {"Rock", "Rock & Roll"},
    {"Rock", "Rockabilly"},
    {"Rock", "Singer & Songwriter"},
    {"Rock", "Surf"},
    {"Seasonal and Holiday", "Seasonal and Holiday"},
    {"Seasonal and Holiday", "Birthday"},
    {"Seasonal and Holiday", "Christmas"},
    {"Seasonal and Holiday", "Halloween"},
    {"Seasonal and Holiday", "Kwanzaa"},
    {"Seasonal and Holiday", "Valentine"},
    {"Seasonal and Holiday", "Winter"},
    {"Soundtracks", "Soundtracks"},
    {"Soundtracks", "Anime"},
    {"Soundtracks", "Kids"},
    {"Soundtracks", "Original Score"},
    {"Soundtracks", "Showtunes"},
    {"Soundtracks", "Video Game Music"},
    {"Talk", "Talk"},
    {"Talk", "BlogTalk"},
    {"Talk", "Comedy"},
    {"Talk", "Community"},
    {"Talk", "Educational"},
    {"Talk", "Government"},
    {"Talk", "News"},
    {"Talk", "Old Time Radio"},
    {"Talk", "Other Talk"},
    {"Talk", "Political"},
    {"Talk", "Scanner"},
    {"Talk", "Spoken Word"},
    {"Talk", "Sports"},
    {"Talk", "Technology"},
    {"Themes", "Themes"},
    {"Themes", "Adult"},
    {"Themes", "Best Of"},
    {"Themes", "Chill"},
    {"Themes", "Eclectic"},
    {"Themes", "Experimental"},
    {"Themes", "Female"},
    {"Themes", "Heartache"},
    {"Themes", "Instrumental"},
    {"Themes", "LGBT"},
    {"Themes", "Love and Romance"},
    {"Themes", "Party Mix"},
    {"Themes", "Patriotic"},
    {"Themes", "Rainy Day Mix"},
    {"Themes", "Reality"},
    {"Themes", "Sexy"},
    {"Themes", "Shuffle"},
    {"Themes", "Travel Mix"},
    {"Themes", "Trippy"},
    {"Themes", "Work Mix"}
};

enum zoneEnum
{
	zoneName[32],
	Float:zoneMinX,
	Float:zoneMinY,
	Float:zoneMinZ,
	Float:zoneMaxX,
	Float:zoneMaxY,
	Float:zoneMaxZ
};

new const zoneArray[][zoneEnum] =
{
	{"The Big Ear", 	              -410.00, 1403.30, -3.00, -137.90, 1681.20, 200.00},
	{"Aldea Malvada",                -1372.10, 2498.50, 0.00, -1277.50, 2615.30, 200.00},
	{"Angel Pine",                   -2324.90, -2584.20, -6.10, -1964.20, -2212.10, 200.00},
	{"Arco del Oeste",               -901.10, 2221.80, 0.00, -592.00, 2571.90, 200.00},
	{"Avispa Country Club",          -2646.40, -355.40, 0.00, -2270.00, -222.50, 200.00},
	{"Avispa Country Club",          -2831.80, -430.20, -6.10, -2646.40, -222.50, 200.00},
	{"Avispa Country Club",          -2361.50, -417.10, 0.00, -2270.00, -355.40, 200.00},
	{"Avispa Country Club",          -2667.80, -302.10, -28.80, -2646.40, -262.30, 71.10},
	{"Avispa Country Club",          -2470.00, -355.40, 0.00, -2270.00, -318.40, 46.10},
	{"Avispa Country Club",          -2550.00, -355.40, 0.00, -2470.00, -318.40, 39.70},
	{"Back o Beyond",                -1166.90, -2641.10, 0.00, -321.70, -1856.00, 200.00},
	{"Battery Point",                -2741.00, 1268.40, -4.50, -2533.00, 1490.40, 200.00},
	{"Bayside",                      -2741.00, 2175.10, 0.00, -2353.10, 2722.70, 200.00},
	{"Bayside Marina",               -2353.10, 2275.70, 0.00, -2153.10, 2475.70, 200.00},
	{"Beacon Hill",                  -399.60, -1075.50, -1.40, -319.00, -977.50, 198.50},
	{"Blackfield",                   964.30, 1203.20, -89.00, 1197.30, 1403.20, 110.90},
	{"Blackfield",                   964.30, 1403.20, -89.00, 1197.30, 1726.20, 110.90},
	{"Blackfield Chapel",            1375.60, 596.30, -89.00, 1558.00, 823.20, 110.90},
	{"Blackfield Chapel",            1325.60, 596.30, -89.00, 1375.60, 795.00, 110.90},
	{"Blackfield Intersection",      1197.30, 1044.60, -89.00, 1277.00, 1163.30, 110.90},
	{"Blackfield Intersection",      1166.50, 795.00, -89.00, 1375.60, 1044.60, 110.90},
	{"Blackfield Intersection",      1277.00, 1044.60, -89.00, 1315.30, 1087.60, 110.90},
	{"Blackfield Intersection",      1375.60, 823.20, -89.00, 1457.30, 919.40, 110.90},
	{"Blueberry",                    104.50, -220.10, 2.30, 349.60, 152.20, 200.00},
	{"Blueberry",                    19.60, -404.10, 3.80, 349.60, -220.10, 200.00},
	{"Blueberry Acres",              -319.60, -220.10, 0.00, 104.50, 293.30, 200.00},
	{"Caligula's Palace",            2087.30, 1543.20, -89.00, 2437.30, 1703.20, 110.90},
	{"Caligula's Palace",            2137.40, 1703.20, -89.00, 2437.30, 1783.20, 110.90},
	{"Calton Heights",               -2274.10, 744.10, -6.10, -1982.30, 1358.90, 200.00},
	{"Chinatown",                    -2274.10, 578.30, -7.60, -2078.60, 744.10, 200.00},
	{"City Hall",                    -2867.80, 277.40, -9.10, -2593.40, 458.40, 200.00},
	{"Come-A-Lot",                   2087.30, 943.20, -89.00, 2623.10, 1203.20, 110.90},
	{"Commerce",                     1323.90, -1842.20, -89.00, 1701.90, -1722.20, 110.90},
	{"Commerce",                     1323.90, -1722.20, -89.00, 1440.90, -1577.50, 110.90},
	{"Commerce",                     1370.80, -1577.50, -89.00, 1463.90, -1384.90, 110.90},
	{"Commerce",                     1463.90, -1577.50, -89.00, 1667.90, -1430.80, 110.90},
	{"Commerce",                     1583.50, -1722.20, -89.00, 1758.90, -1577.50, 110.90},
	{"Commerce",                     1667.90, -1577.50, -89.00, 1812.60, -1430.80, 110.90},
	{"Conference Center",            1046.10, -1804.20, -89.00, 1323.90, -1722.20, 110.90},
	{"Conference Center",            1073.20, -1842.20, -89.00, 1323.90, -1804.20, 110.90},
	{"Cranberry Station",            -2007.80, 56.30, 0.00, -1922.00, 224.70, 100.00},
	{"Creek",                        2749.90, 1937.20, -89.00, 2921.60, 2669.70, 110.90},
	{"Dillimore",                    580.70, -674.80, -9.50, 861.00, -404.70, 200.00},
	{"Doherty",                      -2270.00, -324.10, -0.00, -1794.90, -222.50, 200.00},
	{"Doherty",                      -2173.00, -222.50, -0.00, -1794.90, 265.20, 200.00},
	{"Downtown",                     -1982.30, 744.10, -6.10, -1871.70, 1274.20, 200.00},
	{"Downtown",                     -1871.70, 1176.40, -4.50, -1620.30, 1274.20, 200.00},
	{"Downtown",                     -1700.00, 744.20, -6.10, -1580.00, 1176.50, 200.00},
	{"Downtown",                     -1580.00, 744.20, -6.10, -1499.80, 1025.90, 200.00},
	{"Downtown",                     -2078.60, 578.30, -7.60, -1499.80, 744.20, 200.00},
	{"Downtown",                     -1993.20, 265.20, -9.10, -1794.90, 578.30, 200.00},
	{"Downtown Los Santos",          1463.90, -1430.80, -89.00, 1724.70, -1290.80, 110.90},
	{"Downtown Los Santos",          1724.70, -1430.80, -89.00, 1812.60, -1250.90, 110.90},
	{"Downtown Los Santos",          1463.90, -1290.80, -89.00, 1724.70, -1150.80, 110.90},
	{"Downtown Los Santos",          1370.80, -1384.90, -89.00, 1463.90, -1170.80, 110.90},
	{"Downtown Los Santos",          1724.70, -1250.90, -89.00, 1812.60, -1150.80, 110.90},
	{"Downtown Los Santos",          1370.80, -1170.80, -89.00, 1463.90, -1130.80, 110.90},
	{"Downtown Los Santos",          1378.30, -1130.80, -89.00, 1463.90, -1026.30, 110.90},
	{"Downtown Los Santos",          1391.00, -1026.30, -89.00, 1463.90, -926.90, 110.90},
	{"Downtown Los Santos",          1507.50, -1385.20, 110.90, 1582.50, -1325.30, 335.90},
	{"East Beach",                   2632.80, -1852.80, -89.00, 2959.30, -1668.10, 110.90},
	{"East Beach",                   2632.80, -1668.10, -89.00, 2747.70, -1393.40, 110.90},
	{"East Beach",                   2747.70, -1668.10, -89.00, 2959.30, -1498.60, 110.90},
	{"East Beach",                   2747.70, -1498.60, -89.00, 2959.30, -1120.00, 110.90},
	{"East Los Santos",              2421.00, -1628.50, -89.00, 2632.80, -1454.30, 110.90},
	{"East Los Santos",              2222.50, -1628.50, -89.00, 2421.00, -1494.00, 110.90},
	{"East Los Santos",              2266.20, -1494.00, -89.00, 2381.60, -1372.00, 110.90},
	{"East Los Santos",              2381.60, -1494.00, -89.00, 2421.00, -1454.30, 110.90},
	{"East Los Santos",              2281.40, -1372.00, -89.00, 2381.60, -1135.00, 110.90},
	{"East Los Santos",              2381.60, -1454.30, -89.00, 2462.10, -1135.00, 110.90},
	{"East Los Santos",              2462.10, -1454.30, -89.00, 2581.70, -1135.00, 110.90},
	{"Easter Basin",                 -1794.90, 249.90, -9.10, -1242.90, 578.30, 200.00},
	{"Easter Basin",                 -1794.90, -50.00, -0.00, -1499.80, 249.90, 200.00},
	{"Easter Bay Airport",           -1499.80, -50.00, -0.00, -1242.90, 249.90, 200.00},
	{"Easter Bay Airport",           -1794.90, -730.10, -3.00, -1213.90, -50.00, 200.00},
	{"Easter Bay Airport",           -1213.90, -730.10, 0.00, -1132.80, -50.00, 200.00},
	{"Easter Bay Airport",           -1242.90, -50.00, 0.00, -1213.90, 578.30, 200.00},
	{"Easter Bay Airport",           -1213.90, -50.00, -4.50, -947.90, 578.30, 200.00},
	{"Easter Bay Airport",           -1315.40, -405.30, 15.40, -1264.40, -209.50, 25.40},
	{"Easter Bay Airport",           -1354.30, -287.30, 15.40, -1315.40, -209.50, 25.40},
	{"Easter Bay Airport",           -1490.30, -209.50, 15.40, -1264.40, -148.30, 25.40},
	{"Easter Bay Chemicals",         -1132.80, -768.00, 0.00, -956.40, -578.10, 200.00},
	{"Easter Bay Chemicals",         -1132.80, -787.30, 0.00, -956.40, -768.00, 200.00},
	{"El Castillo del Diablo",       -464.50, 2217.60, 0.00, -208.50, 2580.30, 200.00},
	{"El Castillo del Diablo",       -208.50, 2123.00, -7.60, 114.00, 2337.10, 200.00},
	{"El Castillo del Diablo",       -208.50, 2337.10, 0.00, 8.40, 2487.10, 200.00},
	{"El Corona",                    1812.60, -2179.20, -89.00, 1970.60, -1852.80, 110.90},
	{"El Corona",                    1692.60, -2179.20, -89.00, 1812.60, -1842.20, 110.90},
	{"El Quebrados",                 -1645.20, 2498.50, 0.00, -1372.10, 2777.80, 200.00},
	{"Esplanade East",               -1620.30, 1176.50, -4.50, -1580.00, 1274.20, 200.00},
	{"Esplanade East",               -1580.00, 1025.90, -6.10, -1499.80, 1274.20, 200.00},
	{"Esplanade East",               -1499.80, 578.30, -79.60, -1339.80, 1274.20, 20.30},
	{"Esplanade North",              -2533.00, 1358.90, -4.50, -1996.60, 1501.20, 200.00},
	{"Esplanade North",              -1996.60, 1358.90, -4.50, -1524.20, 1592.50, 200.00},
	{"Esplanade North",              -1982.30, 1274.20, -4.50, -1524.20, 1358.90, 200.00},
	{"Fallen Tree",                  -792.20, -698.50, -5.30, -452.40, -380.00, 200.00},
	{"Fallow Bridge",                434.30, 366.50, 0.00, 603.00, 555.60, 200.00},
	{"Fern Ridge",                   508.10, -139.20, 0.00, 1306.60, 119.50, 200.00},
	{"Financial",                    -1871.70, 744.10, -6.10, -1701.30, 1176.40, 300.00},
	{"Fisher's Lagoon",              1916.90, -233.30, -100.00, 2131.70, 13.80, 200.00},
	{"Flint Intersection",           -187.70, -1596.70, -89.00, 17.00, -1276.60, 110.90},
	{"Flint Range",                  -594.10, -1648.50, 0.00, -187.70, -1276.60, 200.00},
	{"Fort Carson",                  -376.20, 826.30, -3.00, 123.70, 1220.40, 200.00},
	{"Foster Valley",                -2270.00, -430.20, -0.00, -2178.60, -324.10, 200.00},
	{"Foster Valley",                -2178.60, -599.80, -0.00, -1794.90, -324.10, 200.00},
	{"Foster Valley",                -2178.60, -1115.50, 0.00, -1794.90, -599.80, 200.00},
	{"Foster Valley",                -2178.60, -1250.90, 0.00, -1794.90, -1115.50, 200.00},
	{"Frederick Bridge",             2759.20, 296.50, 0.00, 2774.20, 594.70, 200.00},
	{"Gant Bridge",                  -2741.40, 1659.60, -6.10, -2616.40, 2175.10, 200.00},
	{"Gant Bridge",                  -2741.00, 1490.40, -6.10, -2616.40, 1659.60, 200.00},
	{"Ganton",                       2222.50, -1852.80, -89.00, 2632.80, -1722.30, 110.90},
	{"Ganton",                       2222.50, -1722.30, -89.00, 2632.80, -1628.50, 110.90},
	{"Garcia",                       -2411.20, -222.50, -0.00, -2173.00, 265.20, 200.00},
	{"Garcia",                       -2395.10, -222.50, -5.30, -2354.00, -204.70, 200.00},
	{"Garver Bridge",                -1339.80, 828.10, -89.00, -1213.90, 1057.00, 110.90},
	{"Garver Bridge",                -1213.90, 950.00, -89.00, -1087.90, 1178.90, 110.90},
	{"Garver Bridge",                -1499.80, 696.40, -179.60, -1339.80, 925.30, 20.30},
	{"Glen Park",                    1812.60, -1449.60, -89.00, 1996.90, -1350.70, 110.90},
	{"Glen Park",                    1812.60, -1100.80, -89.00, 1994.30, -973.30, 110.90},
	{"Glen Park",                    1812.60, -1350.70, -89.00, 2056.80, -1100.80, 110.90},
	{"Green Palms",                  176.50, 1305.40, -3.00, 338.60, 1520.70, 200.00},
	{"Greenglass College",           964.30, 1044.60, -89.00, 1197.30, 1203.20, 110.90},
	{"Greenglass College",           964.30, 930.80, -89.00, 1166.50, 1044.60, 110.90},
	{"Hampton Barns",                603.00, 264.30, 0.00, 761.90, 366.50, 200.00},
	{"Hankypanky Point",             2576.90, 62.10, 0.00, 2759.20, 385.50, 200.00},
	{"Harry Gold Parkway",           1777.30, 863.20, -89.00, 1817.30, 2342.80, 110.90},
	{"Hashbury",                     -2593.40, -222.50, -0.00, -2411.20, 54.70, 200.00},
	{"Hilltop Farm",                 967.30, -450.30, -3.00, 1176.70, -217.90, 200.00},
	{"Hunter Quarry",                337.20, 710.80, -115.20, 860.50, 1031.70, 203.70},
	{"Idlewood",                     1812.60, -1852.80, -89.00, 1971.60, -1742.30, 110.90},
	{"Idlewood",                     1812.60, -1742.30, -89.00, 1951.60, -1602.30, 110.90},
	{"Idlewood",                     1951.60, -1742.30, -89.00, 2124.60, -1602.30, 110.90},
	{"Idlewood",                     1812.60, -1602.30, -89.00, 2124.60, -1449.60, 110.90},
	{"Idlewood",                     2124.60, -1742.30, -89.00, 2222.50, -1494.00, 110.90},
	{"Idlewood",                     1971.60, -1852.80, -89.00, 2222.50, -1742.30, 110.90},
	{"Jefferson",                    1996.90, -1449.60, -89.00, 2056.80, -1350.70, 110.90},
	{"Jefferson",                    2124.60, -1494.00, -89.00, 2266.20, -1449.60, 110.90},
	{"Jefferson",                    2056.80, -1372.00, -89.00, 2281.40, -1210.70, 110.90},
	{"Jefferson",                    2056.80, -1210.70, -89.00, 2185.30, -1126.30, 110.90},
	{"Jefferson",                    2185.30, -1210.70, -89.00, 2281.40, -1154.50, 110.90},
	{"Jefferson",                    2056.80, -1449.60, -89.00, 2266.20, -1372.00, 110.90},
	{"Julius Thruway East",          2623.10, 943.20, -89.00, 2749.90, 1055.90, 110.90},
	{"Julius Thruway East",          2685.10, 1055.90, -89.00, 2749.90, 2626.50, 110.90},
	{"Julius Thruway East",          2536.40, 2442.50, -89.00, 2685.10, 2542.50, 110.90},
	{"Julius Thruway East",          2625.10, 2202.70, -89.00, 2685.10, 2442.50, 110.90},
	{"Julius Thruway North",         2498.20, 2542.50, -89.00, 2685.10, 2626.50, 110.90},
	{"Julius Thruway North",         2237.40, 2542.50, -89.00, 2498.20, 2663.10, 110.90},
	{"Julius Thruway North",         2121.40, 2508.20, -89.00, 2237.40, 2663.10, 110.90},
	{"Julius Thruway North",         1938.80, 2508.20, -89.00, 2121.40, 2624.20, 110.90},
	{"Julius Thruway North",         1534.50, 2433.20, -89.00, 1848.40, 2583.20, 110.90},
	{"Julius Thruway North",         1848.40, 2478.40, -89.00, 1938.80, 2553.40, 110.90},
	{"Julius Thruway North",         1704.50, 2342.80, -89.00, 1848.40, 2433.20, 110.90},
	{"Julius Thruway North",         1377.30, 2433.20, -89.00, 1534.50, 2507.20, 110.90},
	{"Julius Thruway South",         1457.30, 823.20, -89.00, 2377.30, 863.20, 110.90},
	{"Julius Thruway South",         2377.30, 788.80, -89.00, 2537.30, 897.90, 110.90},
	{"Julius Thruway West",          1197.30, 1163.30, -89.00, 1236.60, 2243.20, 110.90},
	{"Julius Thruway West",          1236.60, 2142.80, -89.00, 1297.40, 2243.20, 110.90},
	{"Juniper Hill",                 -2533.00, 578.30, -7.60, -2274.10, 968.30, 200.00},
	{"Juniper Hollow",               -2533.00, 968.30, -6.10, -2274.10, 1358.90, 200.00},
	{"K.A.C.C. Military Fuels",      2498.20, 2626.50, -89.00, 2749.90, 2861.50, 110.90},
	{"Kincaid Bridge",               -1339.80, 599.20, -89.00, -1213.90, 828.10, 110.90},
	{"Kincaid Bridge",               -1213.90, 721.10, -89.00, -1087.90, 950.00, 110.90},
	{"Kincaid Bridge",               -1087.90, 855.30, -89.00, -961.90, 986.20, 110.90},
	{"King's",                       -2329.30, 458.40, -7.60, -1993.20, 578.30, 200.00},
	{"King's",                       -2411.20, 265.20, -9.10, -1993.20, 373.50, 200.00},
	{"King's",                       -2253.50, 373.50, -9.10, -1993.20, 458.40, 200.00},
	{"LVA Freight Depot",            1457.30, 863.20, -89.00, 1777.40, 1143.20, 110.90},
	{"LVA Freight Depot",            1375.60, 919.40, -89.00, 1457.30, 1203.20, 110.90},
	{"LVA Freight Depot",            1277.00, 1087.60, -89.00, 1375.60, 1203.20, 110.90},
	{"LVA Freight Depot",            1315.30, 1044.60, -89.00, 1375.60, 1087.60, 110.90},
	{"LVA Freight Depot",            1236.60, 1163.40, -89.00, 1277.00, 1203.20, 110.90},
	{"Las Barrancas",                -926.10, 1398.70, -3.00, -719.20, 1634.60, 200.00},
	{"Las Brujas",                   -365.10, 2123.00, -3.00, -208.50, 2217.60, 200.00},
	{"Las Colinas",                  1994.30, -1100.80, -89.00, 2056.80, -920.80, 110.90},
	{"Las Colinas",                  2056.80, -1126.30, -89.00, 2126.80, -920.80, 110.90},
	{"Las Colinas",                  2185.30, -1154.50, -89.00, 2281.40, -934.40, 110.90},
	{"Las Colinas",                  2126.80, -1126.30, -89.00, 2185.30, -934.40, 110.90},
	{"Las Colinas",                  2747.70, -1120.00, -89.00, 2959.30, -945.00, 110.90},
	{"Las Colinas",                  2632.70, -1135.00, -89.00, 2747.70, -945.00, 110.90},
	{"Las Colinas",                  2281.40, -1135.00, -89.00, 2632.70, -945.00, 110.90},
	{"Las Payasadas",                -354.30, 2580.30, 2.00, -133.60, 2816.80, 200.00},
	{"Las Venturas Airport",         1236.60, 1203.20, -89.00, 1457.30, 1883.10, 110.90},
	{"Las Venturas Airport",         1457.30, 1203.20, -89.00, 1777.30, 1883.10, 110.90},
	{"Las Venturas Airport",         1457.30, 1143.20, -89.00, 1777.40, 1203.20, 110.90},
	{"Las Venturas Airport",         1515.80, 1586.40, -12.50, 1729.90, 1714.50, 87.50},
	{"Last Dime Motel",              1823.00, 596.30, -89.00, 1997.20, 823.20, 110.90},
	{"Leafy Hollow",                 -1166.90, -1856.00, 0.00, -815.60, -1602.00, 200.00},
	{"Liberty City",                 -1000.00, 400.00, 1300.00, -700.00, 600.00, 1400.00},
	{"Lil' Probe Inn",               -90.20, 1286.80, -3.00, 153.80, 1554.10, 200.00},
	{"Linden Side",                  2749.90, 943.20, -89.00, 2923.30, 1198.90, 110.90},
	{"Linden Station",               2749.90, 1198.90, -89.00, 2923.30, 1548.90, 110.90},
	{"Linden Station",               2811.20, 1229.50, -39.50, 2861.20, 1407.50, 60.40},
	{"Little Mexico",                1701.90, -1842.20, -89.00, 1812.60, -1722.20, 110.90},
	{"Little Mexico",                1758.90, -1722.20, -89.00, 1812.60, -1577.50, 110.90},
	{"Los Flores",                   2581.70, -1454.30, -89.00, 2632.80, -1393.40, 110.90},
	{"Los Flores",                   2581.70, -1393.40, -89.00, 2747.70, -1135.00, 110.90},
	{"Los Santos International",     1249.60, -2394.30, -89.00, 1852.00, -2179.20, 110.90},
	{"Los Santos International",     1852.00, -2394.30, -89.00, 2089.00, -2179.20, 110.90},
	{"Los Santos International",     1382.70, -2730.80, -89.00, 2201.80, -2394.30, 110.90},
	{"Los Santos International",     1974.60, -2394.30, -39.00, 2089.00, -2256.50, 60.90},
	{"Los Santos International",     1400.90, -2669.20, -39.00, 2189.80, -2597.20, 60.90},
	{"Los Santos International",     2051.60, -2597.20, -39.00, 2152.40, -2394.30, 60.90},
	{"Marina",                       647.70, -1804.20, -89.00, 851.40, -1577.50, 110.90},
	{"Marina",                       647.70, -1577.50, -89.00, 807.90, -1416.20, 110.90},
	{"Marina",                       807.90, -1577.50, -89.00, 926.90, -1416.20, 110.90},
	{"Market",                       787.40, -1416.20, -89.00, 1072.60, -1310.20, 110.90},
	{"Market",                       952.60, -1310.20, -89.00, 1072.60, -1130.80, 110.90},
	{"Market",                       1072.60, -1416.20, -89.00, 1370.80, -1130.80, 110.90},
	{"Market",                       926.90, -1577.50, -89.00, 1370.80, -1416.20, 110.90},
	{"Market Station",               787.40, -1410.90, -34.10, 866.00, -1310.20, 65.80},
	{"Martin Bridge",                -222.10, 293.30, 0.00, -122.10, 476.40, 200.00},
	{"Missionary Hill",              -2994.40, -811.20, 0.00, -2178.60, -430.20, 200.00},
	{"Montgomery",                   1119.50, 119.50, -3.00, 1451.40, 493.30, 200.00},
	{"Montgomery",                   1451.40, 347.40, -6.10, 1582.40, 420.80, 200.00},
	{"Montgomery Intersection",      1546.60, 208.10, 0.00, 1745.80, 347.40, 200.00},
	{"Montgomery Intersection",      1582.40, 347.40, 0.00, 1664.60, 401.70, 200.00},
	{"Mulholland",                   1414.00, -768.00, -89.00, 1667.60, -452.40, 110.90},
	{"Mulholland",                   1281.10, -452.40, -89.00, 1641.10, -290.90, 110.90},
	{"Mulholland",                   1269.10, -768.00, -89.00, 1414.00, -452.40, 110.90},
	{"Mulholland",                   1357.00, -926.90, -89.00, 1463.90, -768.00, 110.90},
	{"Mulholland",                   1318.10, -910.10, -89.00, 1357.00, -768.00, 110.90},
	{"Mulholland",                   1169.10, -910.10, -89.00, 1318.10, -768.00, 110.90},
	{"Mulholland",                   768.60, -954.60, -89.00, 952.60, -860.60, 110.90},
	{"Mulholland",                   687.80, -860.60, -89.00, 911.80, -768.00, 110.90},
	{"Mulholland",                   737.50, -768.00, -89.00, 1142.20, -674.80, 110.90},
	{"Mulholland",                   1096.40, -910.10, -89.00, 1169.10, -768.00, 110.90},
	{"Mulholland",                   952.60, -937.10, -89.00, 1096.40, -860.60, 110.90},
	{"Mulholland",                   911.80, -860.60, -89.00, 1096.40, -768.00, 110.90},
	{"Mulholland",                   861.00, -674.80, -89.00, 1156.50, -600.80, 110.90},
	{"Mulholland Intersection",      1463.90, -1150.80, -89.00, 1812.60, -768.00, 110.90},
	{"North Rock",                   2285.30, -768.00, 0.00, 2770.50, -269.70, 200.00},
	{"Ocean Docks",                  2373.70, -2697.00, -89.00, 2809.20, -2330.40, 110.90},
	{"Ocean Docks",                  2201.80, -2418.30, -89.00, 2324.00, -2095.00, 110.90},
	{"Ocean Docks",                  2324.00, -2302.30, -89.00, 2703.50, -2145.10, 110.90},
	{"Ocean Docks",                  2089.00, -2394.30, -89.00, 2201.80, -2235.80, 110.90},
	{"Ocean Docks",                  2201.80, -2730.80, -89.00, 2324.00, -2418.30, 110.90},
	{"Ocean Docks",                  2703.50, -2302.30, -89.00, 2959.30, -2126.90, 110.90},
	{"Ocean Docks",                  2324.00, -2145.10, -89.00, 2703.50, -2059.20, 110.90},
	{"Ocean Flats",                  -2994.40, 277.40, -9.10, -2867.80, 458.40, 200.00},
	{"Ocean Flats",                  -2994.40, -222.50, -0.00, -2593.40, 277.40, 200.00},
	{"Ocean Flats",                  -2994.40, -430.20, -0.00, -2831.80, -222.50, 200.00},
	{"Octane Springs",               338.60, 1228.50, 0.00, 664.30, 1655.00, 200.00},
	{"Old Venturas Strip",           2162.30, 2012.10, -89.00, 2685.10, 2202.70, 110.90},
	{"Palisades",                    -2994.40, 458.40, -6.10, -2741.00, 1339.60, 200.00},
	{"Palomino Creek",               2160.20, -149.00, 0.00, 2576.90, 228.30, 200.00},
	{"Paradiso",                     -2741.00, 793.40, -6.10, -2533.00, 1268.40, 200.00},
	{"Pershing Square",              1440.90, -1722.20, -89.00, 1583.50, -1577.50, 110.90},
	{"Pilgrim",                      2437.30, 1383.20, -89.00, 2624.40, 1783.20, 110.90},
	{"Pilgrim",                      2624.40, 1383.20, -89.00, 2685.10, 1783.20, 110.90},
	{"Pilson Intersection",          1098.30, 2243.20, -89.00, 1377.30, 2507.20, 110.90},
	{"Pirates in Men's Pants",       1817.30, 1469.20, -89.00, 2027.40, 1703.20, 110.90},
	{"Playa del Seville",            2703.50, -2126.90, -89.00, 2959.30, -1852.80, 110.90},
	{"Prickle Pine",                 1534.50, 2583.20, -89.00, 1848.40, 2863.20, 110.90},
	{"Prickle Pine",                 1117.40, 2507.20, -89.00, 1534.50, 2723.20, 110.90},
	{"Prickle Pine",                 1848.40, 2553.40, -89.00, 1938.80, 2863.20, 110.90},
	{"Prickle Pine",                 1938.80, 2624.20, -89.00, 2121.40, 2861.50, 110.90},
	{"Queens",                       -2533.00, 458.40, 0.00, -2329.30, 578.30, 200.00},
	{"Queens",                       -2593.40, 54.70, 0.00, -2411.20, 458.40, 200.00},
	{"Queens",                       -2411.20, 373.50, 0.00, -2253.50, 458.40, 200.00},
	{"Randolph Industrial Estate",   1558.00, 596.30, -89.00, 1823.00, 823.20, 110.90},
	{"Redsands East",                1817.30, 2011.80, -89.00, 2106.70, 2202.70, 110.90},
	{"Redsands East",                1817.30, 2202.70, -89.00, 2011.90, 2342.80, 110.90},
	{"Redsands East",                1848.40, 2342.80, -89.00, 2011.90, 2478.40, 110.90},
	{"Redsands West",                1236.60, 1883.10, -89.00, 1777.30, 2142.80, 110.90},
	{"Redsands West",                1297.40, 2142.80, -89.00, 1777.30, 2243.20, 110.90},
	{"Redsands West",                1377.30, 2243.20, -89.00, 1704.50, 2433.20, 110.90},
	{"Redsands West",                1704.50, 2243.20, -89.00, 1777.30, 2342.80, 110.90},
	{"Regular Tom",                  -405.70, 1712.80, -3.00, -276.70, 1892.70, 200.00},
	{"Richman",                      647.50, -1118.20, -89.00, 787.40, -954.60, 110.90},
	{"Richman",                      647.50, -954.60, -89.00, 768.60, -860.60, 110.90},
	{"Richman",                      225.10, -1369.60, -89.00, 334.50, -1292.00, 110.90},
	{"Richman",                      225.10, -1292.00, -89.00, 466.20, -1235.00, 110.90},
	{"Richman",                      72.60, -1404.90, -89.00, 225.10, -1235.00, 110.90},
	{"Richman",                      72.60, -1235.00, -89.00, 321.30, -1008.10, 110.90},
	{"Richman",                      321.30, -1235.00, -89.00, 647.50, -1044.00, 110.90},
	{"Richman",                      321.30, -1044.00, -89.00, 647.50, -860.60, 110.90},
	{"Richman",                      321.30, -860.60, -89.00, 687.80, -768.00, 110.90},
	{"Richman",                      321.30, -768.00, -89.00, 700.70, -674.80, 110.90},
	{"Robada Intersection",          -1119.00, 1178.90, -89.00, -862.00, 1351.40, 110.90},
	{"Roca Escalante",               2237.40, 2202.70, -89.00, 2536.40, 2542.50, 110.90},
	{"Roca Escalante",               2536.40, 2202.70, -89.00, 2625.10, 2442.50, 110.90},
	{"Rockshore East",               2537.30, 676.50, -89.00, 2902.30, 943.20, 110.90},
	{"Rockshore West",               1997.20, 596.30, -89.00, 2377.30, 823.20, 110.90},
	{"Rockshore West",               2377.30, 596.30, -89.00, 2537.30, 788.80, 110.90},
	{"Rodeo",                        72.60, -1684.60, -89.00, 225.10, -1544.10, 110.90},
	{"Rodeo",                        72.60, -1544.10, -89.00, 225.10, -1404.90, 110.90},
	{"Rodeo",                        225.10, -1684.60, -89.00, 312.80, -1501.90, 110.90},
	{"Rodeo",                        225.10, -1501.90, -89.00, 334.50, -1369.60, 110.90},
	{"Rodeo",                        334.50, -1501.90, -89.00, 422.60, -1406.00, 110.90},
	{"Rodeo",                        312.80, -1684.60, -89.00, 422.60, -1501.90, 110.90},
	{"Rodeo",                        422.60, -1684.60, -89.00, 558.00, -1570.20, 110.90},
	{"Rodeo",                        558.00, -1684.60, -89.00, 647.50, -1384.90, 110.90},
	{"Rodeo",                        466.20, -1570.20, -89.00, 558.00, -1385.00, 110.90},
	{"Rodeo",                        422.60, -1570.20, -89.00, 466.20, -1406.00, 110.90},
	{"Rodeo",                        466.20, -1385.00, -89.00, 647.50, -1235.00, 110.90},
	{"Rodeo",                        334.50, -1406.00, -89.00, 466.20, -1292.00, 110.90},
	{"Royal Casino",                 2087.30, 1383.20, -89.00, 2437.30, 1543.20, 110.90},
	{"San Andreas Sound",            2450.30, 385.50, -100.00, 2759.20, 562.30, 200.00},
	{"Santa Flora",                  -2741.00, 458.40, -7.60, -2533.00, 793.40, 200.00},
	{"Santa Maria Beach",            342.60, -2173.20, -89.00, 647.70, -1684.60, 110.90},
	{"Santa Maria Beach",            72.60, -2173.20, -89.00, 342.60, -1684.60, 110.90},
	{"Shady Cabin",                  -1632.80, -2263.40, -3.00, -1601.30, -2231.70, 200.00},
	{"Shady Creeks",                 -1820.60, -2643.60, -8.00, -1226.70, -1771.60, 200.00},
	{"Shady Creeks",                 -2030.10, -2174.80, -6.10, -1820.60, -1771.60, 200.00},
	{"Sobell Rail Yards",            2749.90, 1548.90, -89.00, 2923.30, 1937.20, 110.90},
	{"Spinybed",                     2121.40, 2663.10, -89.00, 2498.20, 2861.50, 110.90},
	{"Starfish Casino",              2437.30, 1783.20, -89.00, 2685.10, 2012.10, 110.90},
	{"Starfish Casino",              2437.30, 1858.10, -39.00, 2495.00, 1970.80, 60.90},
	{"Starfish Casino",              2162.30, 1883.20, -89.00, 2437.30, 2012.10, 110.90},
	{"Temple",                       1252.30, -1130.80, -89.00, 1378.30, -1026.30, 110.90},
	{"Temple",                       1252.30, -1026.30, -89.00, 1391.00, -926.90, 110.90},
	{"Temple",                       1252.30, -926.90, -89.00, 1357.00, -910.10, 110.90},
	{"Temple",                       952.60, -1130.80, -89.00, 1096.40, -937.10, 110.90},
	{"Temple",                       1096.40, -1130.80, -89.00, 1252.30, -1026.30, 110.90},
	{"Temple",                       1096.40, -1026.30, -89.00, 1252.30, -910.10, 110.90},
	{"The Camel's Toe",              2087.30, 1203.20, -89.00, 2640.40, 1383.20, 110.90},
	{"The Clown's Pocket",           2162.30, 1783.20, -89.00, 2437.30, 1883.20, 110.90},
	{"The Emerald Isle",             2011.90, 2202.70, -89.00, 2237.40, 2508.20, 110.90},
	{"The Farm",                     -1209.60, -1317.10, 114.90, -908.10, -787.30, 251.90},
	{"The Four Dragons Casino",      1817.30, 863.20, -89.00, 2027.30, 1083.20, 110.90},
	{"The High Roller",              1817.30, 1283.20, -89.00, 2027.30, 1469.20, 110.90},
	{"The Mako Span",                1664.60, 401.70, 0.00, 1785.10, 567.20, 200.00},
	{"The Panopticon",               -947.90, -304.30, -1.10, -319.60, 327.00, 200.00},
	{"The Pink Swan",                1817.30, 1083.20, -89.00, 2027.30, 1283.20, 110.90},
	{"The Sherman Dam",              -968.70, 1929.40, -3.00, -481.10, 2155.20, 200.00},
	{"The Strip",                    2027.40, 863.20, -89.00, 2087.30, 1703.20, 110.90},
	{"The Strip",                    2106.70, 1863.20, -89.00, 2162.30, 2202.70, 110.90},
	{"The Strip",                    2027.40, 1783.20, -89.00, 2162.30, 1863.20, 110.90},
	{"The Strip",                    2027.40, 1703.20, -89.00, 2137.40, 1783.20, 110.90},
	{"The Visage",                   1817.30, 1863.20, -89.00, 2106.70, 2011.80, 110.90},
	{"The Visage",                   1817.30, 1703.20, -89.00, 2027.40, 1863.20, 110.90},
	{"Unity Station",                1692.60, -1971.80, -20.40, 1812.60, -1932.80, 79.50},
	{"Valle Ocultado",               -936.60, 2611.40, 2.00, -715.90, 2847.90, 200.00},
	{"Verdant Bluffs",               930.20, -2488.40, -89.00, 1249.60, -2006.70, 110.90},
	{"Verdant Bluffs",               1073.20, -2006.70, -89.00, 1249.60, -1842.20, 110.90},
	{"Verdant Bluffs",               1249.60, -2179.20, -89.00, 1692.60, -1842.20, 110.90},
	{"Verdant Meadows",              37.00, 2337.10, -3.00, 435.90, 2677.90, 200.00},
	{"Verona Beach",                 647.70, -2173.20, -89.00, 930.20, -1804.20, 110.90},
	{"Verona Beach",                 930.20, -2006.70, -89.00, 1073.20, -1804.20, 110.90},
	{"Verona Beach",                 851.40, -1804.20, -89.00, 1046.10, -1577.50, 110.90},
	{"Verona Beach",                 1161.50, -1722.20, -89.00, 1323.90, -1577.50, 110.90},
	{"Verona Beach",                 1046.10, -1722.20, -89.00, 1161.50, -1577.50, 110.90},
	{"Vinewood",                     787.40, -1310.20, -89.00, 952.60, -1130.80, 110.90},
	{"Vinewood",                     787.40, -1130.80, -89.00, 952.60, -954.60, 110.90},
	{"Vinewood",                     647.50, -1227.20, -89.00, 787.40, -1118.20, 110.90},
	{"Vinewood",                     647.70, -1416.20, -89.00, 787.40, -1227.20, 110.90},
	{"Whitewood Estates",            883.30, 1726.20, -89.00, 1098.30, 2507.20, 110.90},
	{"Whitewood Estates",            1098.30, 1726.20, -89.00, 1197.30, 2243.20, 110.90},
	{"Willowfield",                  1970.60, -2179.20, -89.00, 2089.00, -1852.80, 110.90},
	{"Willowfield",                  2089.00, -2235.80, -89.00, 2201.80, -1989.90, 110.90},
	{"Willowfield",                  2089.00, -1989.90, -89.00, 2324.00, -1852.80, 110.90},
	{"Willowfield",                  2201.80, -2095.00, -89.00, 2324.00, -1989.90, 110.90},
	{"Willowfield",                  2541.70, -1941.40, -89.00, 2703.50, -1852.80, 110.90},
	{"Willowfield",                  2324.00, -2059.20, -89.00, 2541.70, -1852.80, 110.90},
	{"Willowfield",                  2541.70, -2059.20, -89.00, 2703.50, -1941.40, 110.90},
	{"Yellow Bell Station",          1377.40, 2600.40, -21.90, 1492.40, 2687.30, 78.00},
	{"Los Santos",                   44.60, -2892.90, -242.90, 2997.00, -768.00, 900.00},
	{"Las Venturas",                 869.40, 596.30, -242.90, 2997.00, 2993.80, 900.00},
	{"Bone County",                  -480.50, 596.30, -242.90, 869.40, 2993.80, 900.00},
	{"Tierra Robada",                -2997.40, 1659.60, -242.90, -480.50, 2993.80, 900.00},
	{"Tierra Robada",                -1213.90, 596.30, -242.90, -480.50, 1659.60, 900.00},
	{"San Fierro",                   -2997.40, -1115.50, -242.90, -1213.90, 1659.60, 900.00},
	{"Red County",                   -1213.90, -768.00, -242.90, 2997.00, 596.30, 900.00},
	{"Flint County",                 -1213.90, -2892.90, -242.90, 44.60, -768.00, 900.00},
	{"Whetstone",                    -2997.40, -2892.90, -242.90, -1213.90, -1115.50, 900.00}
};

// ---------------------------------------
native WP_Hash(buffer[], len, const str[]);
native IsValidVehicle(vehicleid);
// ---------------------------------------