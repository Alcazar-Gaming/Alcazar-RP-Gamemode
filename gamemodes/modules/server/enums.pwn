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
/                                 Pawn File: Enums
/                                 Module Folder: Server
/
/                               Module Created by:
/	                        		Stewart - Stewart#8221 - Alcazar City Roleplay
/
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
*/

enum staffEnum
{
	pFactionModLead[MAX_PLAYER_NAME],
	pGangModLead[MAX_PLAYER_NAME],
	pBanAppealerLead[MAX_PLAYER_NAME],
	pAdminPersonnelLead[MAX_PLAYER_NAME],
	pPublicRelationLead[MAX_PLAYER_NAME],
	pSecurityLead[MAX_PLAYER_NAME]
}
new StaffInfo[staffEnum];

enum pEnum
{
	PlayerText:pText[8],
 	pPassword[129],
	pUsername[MAX_PLAYER_NAME],
	pVoiceChat,
	pCharacter,

	// Sabong purposes
	pBidded,
	pBiddedFor,
	pBid,

	//Influencer Role
	pInfluencer,

	pJailBreak,

	// For tailor Job
	pWool,
	
	//Verified via Discord - Stewart
	pVerified,
	pCode,
	pDiscordName[DCC_USERNAME_SIZE],
	pDiscordTag[DCC_ID_SIZE],
	pDiscordID[20+1],

	pVoucher[3],

	pID,
	pLogged,
	pKicked,
	pLoginTries,
	pSetup,
	pChatstyle,
	pGender,
	pAge,
	pSkin,
	pCarrying,
	pCarry,
	Float:pCameraX,
	Float:pCameraY,
	Float:pCameraZ,
	Float:pPosX,
	Float:pPosY,
	Float:pPosZ,
	Float:pPosA,
	pInterior,
	pWorld,
	pCash,
	pBank,
 	pPaycheck,
	pLevel,
	pJobStage,
	pAdvertWarnings,
	pEXP,
	pSkates,
	pSkateObj,
	bool:pSkating,
	bool:pSkateAct,
	
	pFirework,
	pFirstSpawn,
	pSeconds,
	pMinutes,
 	pHours,
	pPlayingHours,

	//Admin/Staff Stuffs/Roles
	pAdmin,
	pStaff,
	pHelper,

	// Secondary STaff Role Leader
	pStaffLeader,

	// Secondary STaff Role Leader
	pDeveloper,
	pDynamicAdmin,
	pFactionMod,
	pAdminPersonnel,
	pGangMod,
	pBanAppealer,
	pEventMod,
	pPublicRelation,
	pSecurity,

	pCrowbar,
	pHelmet,
	pUseHelmet,
	pReportTimer,
	pAdrian,
	pAdrianTimer,
	pDyuze,
	pDyuzeTimer,
	pPriority,
	pPriorityTimer,
	pGraffiti,
	pGraffitiTime,
	pGraffitiColor,
	pGraffitiText[64 char],
	pEditGraffiti,
	pEditGate,
	pEditmObject,
	pAdminName[MAX_PLAYER_NAME],
	Float:pHealth,
	Float:pArmor,
	pWarnings,
	pInjured,
	pBrokenLeg,
	pHospital,
	Float:pSpawnHealth,
	Float:pSpawnArmor,
	pBedType,
	pBedTime,
	pJailType,
	pJailTime,
	pClaimTime,
	pCodeTime,
	pTool,
	pNewbieMuted,
	pAMute,
	pAMCount,
	pHelpMuted,
	pAdMuted,
	pLiveMuted,
	pGlobalMuted,
	pReportMuted,
	pReportWarns,
	pFightStyle,
	pProductChoose,
	pRobbingBiz,
	pAccent[16],
	pDirtyCash,
	pPhone,
	pLottery,
	pJob,
	pSecondJob,
	pCrimes,
	pArrested,
	pWantedLevel,
	pMaterials,
	pPot,
	pCrack,
	pMeth,
	pPainkillers,
	pSeeds,
	pEphedrine,
	pMuriaticAcid,
	pBakingSoda,
	pCigar,
	pFood,
	pDrink,
	pVest,
	bool:pEquipVest,
	pEquipTimer,
	pWalkieTalkie,
	pChannel,
	pRentingHouse,
	pSpraycans,
	pCigars,
	pBoombox,
	pMP3Player,
	pPhonebook,
	pFishingRod,
	pFishingBait,
	pFishWeight,
	pCourierSkill,
	pFishingSkill,
	pGuardSkill,
	pWeaponSkill,
	pLawyerSkill,
	pSmugglerSkill,
	pDetectiveSkill,
	pToggleTextdraws,
	pToggleAtm,
	pToggleVehiclePanel,
	pToggleOOC,
	pTogglePhone,
	pToggleAdmin,
	pToggleHelper,
	pToggleNewbie,
	pToggleWT,
	pRefunded,
	pMonthsary,
	pClaim,
	pToggleRadio,
	pToggleVIP,
	pToggleMusic,
	pToggleFaction,
	pToggleGang,
	pToggleNews,
	pToggleGlobal,
	pToggleCam,
	pToggleHUD,
	pCarLicense,
	pWeaponLicense,
	pDonator,
	pVIPTime,
	pVIPCooldown,
	pCarLicenseTime,
	pWeaponLicenseTime,
	pWeapons[13],
	pTempWeapons[13],
	pAmmo[13],
	pFaction,
	pFactionRank,
	pGang,
	pGangRank,
	pDivision,
	pContracted,
	pContractBy[MAX_PLAYER_NAME],
	pBombs,
	pCompletedHits,
	pFailedHits,
	pReports,
	pNewbies,
	pHelpRequests,
	pSpeedometer, // (1) KM/H (2) MPH
	pPotPlanted,
	pPotTime,
	pPotGrams,
	Float:pPotX,
	Float:pPotY,
	Float:pPotZ,
	Float:pPotA,
	pInventoryUpgrade,
	pAddictUpgrade,
	pTraderUpgrade,
	pAssetUpgrade,
	pHPAmmo,
	pPoisonAmmo,
	pFMJAmmo,
	pAmmoType,
	pAmmoWeapon,
	pDMWarnings,
	pWeaponRestricted,
	pReferralUID,
	pWatch,
	pPhoneSMS,
	pCallTimer,
	pCalling,
	pGPS,
	pPrisonedBy[MAX_PLAYER_NAME],
	pPrisonReason[128],
	pClothes,
	pShowLands,
	pShowTurfs,
	pWatchOn,
	pGPSOn,
	pDoubleXP,
	pCourierCooldown,
 	pPizzaCooldown,
	pDeathCooldown,
	pDetectiveCooldown,
 	pGasCan,
 	pRope,
 	pTotalPatients,
	pTotalFires,
 	pBlindfold,
  	pLastAM,
	pLastChop,
  	pLastCharity,
	pLastReport,
	pLastDamage,
	pLastNewbie,
	pLastRequest,
	pLastPay,
	pLastRepair,
	pLastRefuel,
	pLastDrug,
	pLastDefend,
	pLastSell,
	pLastEnter,
 	pLastPress,
	pLastDeath,
	pLastDesync,
	pLastGlobal,
	pLastShoutout,
	pLastPizza,
	pLastStuck,
	pLastUpdate,
	pLastLoad,
	pLastBet,
	pLastClean,
	pSpectating,
 	pAdminDuty,
	pActiveReport,
	pHospitalTime,
	pHospitalType,
	pInsurance,
	pListen,
	pPMListen,
	pJoinedEvent,
	pPaintball,
	pPaintball2,
	pDueling,
	pEventTeam,
	pAwaitingClothing,
	pFreezeTimer,
	pHelpRequest[128],
	pAcceptedHelp,
	pHouseOffer,
	pHouseOffered,
	pHousePrice,
	pGarageOffer,
	pGarageOffered,
	pGaragePrice,
	pBizOffer,
	pBizOffered,
	pBizPrice,
	pVestOffer,
	pVestPrice,
	pRepairKit,
	pParts,
	pCarOffer,
	pCarOffered,
	pCarPrice,
	pFactionOffer,
	pFactionOffered,
	pGangOffer,
	pGangOffered,
	pFriskOffer,
	pTicketOffer,
	pTicketPrice,
	pLiveOffer,
	pLiveBroadcast,
	pShakeOffer,
	pShakeType,
	pLandOffer,
	pLandOffered,
	pLandPrice,
	pSellOffer,
	pAllianceOffer,
	pSellType,
	pSellExtra,
	pSellPrice,
	pDefendOffer,
	pDefendPrice,
	pDiceOffer,
	pSendRob,
	pDiceBet,
	pInviteOffer,
	pInviteHouse,
	pRobberyOffer,
	pFurnitureIndex,
	pFurnitureHouse,
	pFurniturePerms,
	pLandPerms,
	pClothingIndex,
	pObjectLand,
	pEditType,
	pEditObject,
	pCategory,
	pSelected,
	pFactionEdit,
	pPrice,
	pPizzas,
	pPizzaTime,
	Float:pDistance,
	pCP,
	pShipment,
	pIllegalCargo,
	pFishTime,
	pUsedBait,
	pSmuggleMats,
	pSmuggleDrugs,
	pRefuel,
	pRefuelAmount,
	pCallLine,
	pCallStage,
	Float:pAFKPos[6],
	pAFK,
	pAFKTime,
	pLoopAnim,
	pDrivingTest,
	pTestVehicle,
	pTestCP,
	pMiningTime,
	pMiningRock,
	pConstructionTime,
	pConstruction,
	Text3D:pSpecialTag,
	pTagType,
	pVIPColor,
	pAdminColor,
	pTaxiFare,
	pTaxiPassenger,
	pTaxiBill,
	pTaxiTime,
	pSkinSelected,
	pDuty,
	pMask,

	///////////
	pDrivingFail,
	pDrivingWait,
 	pDrivingTime,
	pDrivingStart,
	pWeaponTest,
	pDrivingCP,
	pDrivingScore,
	
	
	pSpeedTime,
	pBackup,
	pTazer,
	pTazedTime,
	pBeanbag,
	pBeanbagTime,
	pCuffed,
	pTied,
	pGarbage,
	pDraggedBy,
 	pBandage,
 	pMedkit,
	pDelivered,
	pPlantedBomb,
	Float:pBombX,
	Float:pBombY,
	Float:pBombZ,
	pBombObject,
	pContractTaken,
	pPage,
	pVendorTime,
	pBarTime,
	pSpamTime,
	pMuted,
	Text3D:pBoomboxText,
	pBoomboxPlaced, // BOOMBOX
	pBoomboxObject,
	pBoomboxListen,
	pBoomboxURL[128],
	Float:pMinX, // LAND CREATION
	Float:pMinY,
	Float:pMaxX,
	Float:pMaxY,
	Float:plX,
	Float:plY,
	Float:plZ,
	pZoneType,
	pZonePickups[4],
	pZoneID,
	pZoneCreation, //
	pLandCost,
	pTurfType,
	pTurfName[32],
	pMenuType,
	pGenre[32],
	pSubgenre[32],
	pSearch,
	pMusicType,
	pStreamType,
	pNameChange[MAX_PLAYER_NAME],
	pFreeNamechange,
	pChosenLevel,
	pChosenSkin,
 	pPassport,
	pPassportName[MAX_PLAYER_NAME],
	pPassportLevel,
	pPassportSkin,
	pPassportPhone,
	pVehicleKeys,
	pCurrentWeapon,
	pCurrentAmmo,
 	pCurrentVehicle,
 	pVehicleCount,
 	pACWarns,
 	pACTime,
 	pACFired,
 	pACAmmo,
 	pArmorTime,
 	pPotObject,
 	pPickPlant,
 	pPickTime,
 	pCookMeth,
 	pCookTime,
 	pCookGrams,
 	pDrugsUsed,
 	pDrugsTime,
 	pBandana,
 	pGangCar,
 	pCapturingPoint,
 	pCaptureTime,
 	Float:pPointX,
 	Float:pPointY,
 	Float:pPointZ,
	pWatchingIntro, // Server Intro
	pHunger,
	pHungerTimer,
	pThirst,
	pThirstTimer,

	Text3D:aMeID,
	aMeStatus,

 	pLoginCamera,
 	pSmuggleTime,
 	pDealerGang,
 	pPoisonTime,
 	pJetpack,
	pTextFrom,
	pWhisperFrom,
	pMechanicCall,
	pTaxiCall,
	pEmergencyCall,
	pEmergencyType,
	pEmergency[128],
 	pClip,
 	pReloading,
 	pFindTime,
 	pFindPlayer,
 	pRobCash,
 	pLootTime,
 	pToggleWhisper,
 	pBL,
	pBackpack,
	bpWearing,
	bpCash,
	bpMaterials,
	bpPot,
	bpCrack,
	bpMeth,
	bpPainkillers,
	bpWeapons[15],
	bpHPAmmo,
	bpPoisonAmmo,
	bpFMJAmmo,
	pAcceptedEMS,
	pDiamonds,
    pFormerAdmin,
    pCustomTitle[64],
    pBindtype,
    pBindtype2,
    pBindtype3,
    pBindtype4,
    pBindtype5,
    pBind[128],
	pBind2[128],
	pBind3[128],
	pBind4[128],
	pBind5[128],
	pBind6[128],
	pBind7[128],
	pBind8[128],
	pCustomTColor,
	pMarriedTo,
	pMarriedName[MAX_PLAYER_NAME],
	pMarriageOffer,
	pRareTime,
	pEngine,
	pChatAnim, // - newvars
	pToolkit,
	pRobbingHouse,
	
	//Sampvoice
	pFactionRadio,
	pWalkieVoice,
	pLocalVoice,

	/*#if defined Christmas
	#else
		pLastCarolTime,
		pLastHouseCarol,
		pCandy,
	#endif*/

	pFlashlight,
	pUsedFlashlight
	
	
};

//Impound
enum imInfo
{
	Float:imPosX,
 	Float:imPosY,
 	Float:imPosZ,
 	imPickupID,
 	Text3D: imTextID,
};

// Graffiti
enum graffitiData {
	graffitiID,
	graffitiExists,
	Float:graffitiPos[4],
	graffitiIcon,
	graffitiObject,
	graffitiColor,
	graffitiText[64]
};


//Speed
enum speedData {
	speedID,
	speedExists,
	Float:speedPos[4],
	Float:speedRange,
	Float:speedLimit,
	speedObject,
	Text3D:speedText3D,
	sMapIcon
};
//Speed

enum gateData {
	gateID,
	gateExists,
	gateOpened,
	gateModel,
	Float:gateSpeed,
	Float:gateRadius,
	gateTime,
	Float:gatePos[6],
	gateInterior,
	gateWorld,
	Float:gateMove[6],
	gateLinkID,
	gateFaction,
	gatePass[32],
	gateTimer,
	gateObject
};


enum objectData {
	mobjID,
	mobjExists,
	mobjModel,
	Float:mobjPos[6],
	mobjInterior,
	mobjWorld,
	mobjname,
	Text3D:mobjname2,
	mobjObject
};

enum
{
    DIALOG_NONE,
	DIALOG_REGISTER = 1,
	DIALOG_LOGIN,
	DIALOG_SETTINGS,
	DIALOG_CONFIRMPASS,
	DIALOG_CARSTORAGE,
	DIALOG_PAINTBALL,
 	DIALOG_DMVRELEASE,
 	DIALOG_BUYPARTS,
	DIALOG_GENDER,
	DIALOG_AGE,
	DIALOG_REFERRAL,
	DIALOG_TELEPORT,

	// Gasoline
	DIALOG_GASLIST,

	DIALOG_CARBUY,

	DIALOG_REPORT,
	DIALOG_REPORT1,
	DIALOG_REPORTDM,
	DIALOG_REPORTCF,
	DIALOG_REPORTWH,
	DIALOG_REPORTAPPEALFAC,
	DIALOG_REPORTAPPEALGANG,
	DIALOG_REPORTAPPEALPLAYER,
	DIALOG_REPORTREQ,

	// Shipment Contractor Job Dialogue Box // 
	DIALOG_SHIPMENTCONTRACT,

	DIALOG_STATS,
	
	DIALOG_VERIFICATION,
	DIALOG_VERIFICATION1,
	
	DIALOG_GPSNAV,
	DIALOG_NAVLOCATE,

	//for updates, i want to put this into a dialog type
	DIALOG_UPDATES,
	DIALOG_UPDATES2,
	DIALOG_UPDATES3, // Updates are currently increasing! // Dialog added as of February 24, 2022. 9:09 am

	DIALOG_FACTIONS,
	DIALOG_FACTIONS2,
	DIALOG_FACTIONREMOVE,

	DIALOG_PUBLICRELATION,

	// Gang Dialogs - Stewart
	DIALOG_GANGS,
	DIALOG_GANGS1,
	// Gang Strike dialog
	DIALOG_GANGSTRIKE,
	DIALOG_GANGSTRIKE1,
	// Gang delete dialog
	DIALOG_GANGREMOVE,

	// Interaction
	DIALOG_INTERACT,
	DIALOG_INTERACT1,
	DIALOG_PAYINPUT,
	DIALOG_GIVEINPUT0,
	DIALOG_GIVEINPUT1,
	DIALOG_SHOWLICENSE,
	DIALOG_PICKGIVE0,

	//Voucher System - Stewart
	DIALOG_VOUCHER,
	DIALOG_VOUCHER2,
	DIALOG_VOUCHERADMIN,
	
	//Sampvoice
	DIALOG_VOICEMAIN,
	DIALOG_VOICECHAT,
	DIALOG_VOICECHAT2,
	
	// Binds By Stewart
	DIALOG_BINDMAIN,
	DIALOG_BINDMAIN2,
	DIALOG_BINDTEXT,
	DIALOG_BINDTEXT2,
	DIALOG_BINDTEXT3,
	DIALOG_BINDTEXT4,
	DIALOG_BINDTEXT5,
	DIALOG_BINDTYPE,
	DIALOG_BINDTYPE2,
	DIALOG_BINDTYPE3,
	DIALOG_BINDTYPE4,
	DIALOG_BINDTYPE5,
	
	DIALOG_BUYFURNITURE1,
	DIALOG_BUYFURNITURE2,
	
	DIALOG_REFUNDED,
		
	DIALOG_INTERIORS,
	GatePass,
	DIALOG_GRAFFITICOLOR,
	DIALOG_GRAFFITITEXT,
	DIALOG_BUY,
	DIALOG_EDITBUY,
	DIALOG_EDITBUY2,
	DIALOG_BUYCLOTHES,
	DIALOG_PICKLOAD,
	DIALOG_UNREADTEXTS,
	DIALOG_VENDOR,
	DIALOG_BAR,
	DIALOG_NEWBIE,
	DIALOG_ATM,
 	DIALOG_ATM_TRANSFER,
	DIALOG_ATM_TRANSFER2,
	DIALOG_ATMDEPOSIT,
	DIALOG_ATMWITHDRAW,
	DIALOG_LOTTERY,
	
	DIALOG_TYPE_MAIN,
	DIALOG_TYPE_PAINTJOBS,
	DIALOG_TYPE_COLORS,
	DIALOG_TYPE_EXHAUSTS,
	DIALOG_TYPE_FBUMPS,
	DIALOG_TYPE_RBUMPS,
	DIALOG_TYPE_ROOFS,
	DIALOG_TYPE_SPOILERS,
	DIALOG_TYPE_SIDESKIRTS,
	DIALOG_TYPE_BULLBARS,
	DIALOG_TYPE_WHEELS,
	DIALOG_TYPE_CSTEREO,
	DIALOG_TYPE_HYDRAULICS,
	DIALOG_TYPE_NITRO,
	DIALOG_TYPE_LIGHTS,
	DIALOG_TYPE_HOODS,
	DIALOG_TYPE_VENTS,
	
	DIALOG_CHANGEPASS,
	DIALOG_BUYCLOTHINGTYPE,
	DIALOG_BUYCLOTHING,
	DIALOG_CLOTHING,
	DIALOG_CLOTHINGMENU,
	DIALOG_CLOTHINGEDIT,
	DIALOG_CLOTHINGBONE,
	DIALOG_BUYVEHICLE,
	DIALOG_BUYVEHICLENEW,
	DIALOG_BUYVEHICLE2,
	DIALOG_SPAWNCAR,
    DIALOG_DESPAWNCAR,
    DIALOG_FINDCAR,
	DIALOG_BIZINTERIOR,
 	DIALOG_FACTIONLOCKER,
	DIALOG_FACTIONEQUIPMENT,
	DIALOG_FACTIONSKINS,
	DIALOG_HITMANCLOTHES,
	DIALOG_MDC,
	DIALOG_MDCWANTED,
	DIALOG_MDCPLAYER1,
	DIALOG_MDCPLAYER2,
	DIALOG_MDCCHARGES,
	DIALOG_PLAYERLOOKUP,
	DIALOG_VEHICLELOOKUP1,
 	DIALOG_VEHICLELOOKUP2,
 	DIALOG_FACTIONPAY1,
 	DIALOG_FACTIONPAY2,
 	
   	DIALOG_PHONE,
	DIALOG_PHONE_CALL,
	DIALOG_PHONE_SMS,
	DIALOG_PHONE_SMS_TEXT,
	DIALOG_CONTACTS,
	DIALOG_CONTACTS_ADD,
	DIALOG_CONTACTS_NUMBER,
	DIALOG_CONTACTS_OPTIONS,
	
 	DIALOG_PHONEBOOK,
 	DIALOG_CREATEZONE,
  	DIALOG_KIOSK,

	// WEAPON
	DIALOG_WEP_TEST,
	DIALOG_WEP_QUESTION_1,
	DIALOG_WEP_QUESTION_2,
	DIALOG_WEP_QUESTION_3,
	DIALOG_WEP_QUESTION_4,
	DIALOG_WEP_QUESTION_5,
	DIALOG_WEP_QUESTION_6,
	DIALOG_WEP_QUESTION_7,
	DIALOG_WEP_QUESTION_8,
	
	
 	DIALOG_HOSPITAL,
 	DIALOG_HOSPITAL2,
  	DIALOG_MECHANIC,
 	
	//Land System - Stewart
 	DIALOG_CONFIRMZONE,
	DIALOG_LANDBUILD1,
 	DIALOG_LANDBUILD2,
 	DIALOG_LANDBUILDTYPE,
 	DIALOG_LANDMENU,
 	DIALOG_LANDEDITOBJECT,
 	DIALOG_LANDOBJECTMENU,
 	DIALOG_LANDOBJECTS,
 	DIALOG_LANDSELLALL,
 	DIALOG_LANDPERMS,
	
 	DIALOG_USECOOKIES,
 	DIALOG_MP3PLAYER,
 	DIALOG_MP3MUSIC,
 	DIALOG_MP3RADIO,
 	DIALOG_MP3URL,
 	DIALOG_MP3RADIOGENRES,
 	DIALOG_MP3RADIOSUBGENRES,
 	DIALOG_MP3RADIORESULTS,
 	DIALOG_MP3RADIOSEARCH,
 	DIALOG_GCLOTHES,
 	DIALOG_GANGSTASH,
 	DIALOG_GANGSTASHWEAPONS1,
	DIALOG_GANGSTASHWEAPONS2,
	DIALOG_GANGSTASHDRUGS1,
	DIALOG_GANGSTASHDRUGS2,
	DIALOG_GANGSTASHAMMO1,
	DIALOG_GANGSTASHAMMO2,
	DIALOG_GANGSTASHMATS,
	DIALOG_GANGSTASHCASH,
 	DIALOG_GANGDEPOSIT,
 	DIALOG_GANGWITHDRAW,
 	DIALOG_GANGSKINS,
 	DIALOG_GANGFINDCAR,
 	DIALOG_GANGPOINTSHOP,
 	DIALOG_GANGARMSDEALER,
 	DIALOG_GANGARMSWEAPONS,
 	DIALOG_GANGARMSAMMO,
 	DIALOG_GANGAMMOBUY,
 	DIALOG_GANGARMSEDIT,
 	DIALOG_GANGARMSPRICES,
 	DIALOG_GANGARMSPRICE,
 	DIALOG_GANGARMSDEPOSITMATS,
	DIALOG_GANGARMSWITHDRAWMATS,
	DIALOG_GANGAMMODEPOSITS,
	DIALOG_GANGAMMODEPOSIT,
	DIALOG_GANGAMMOWITHDRAWS,
	DIALOG_GANGAMMOWITHDRAW,
	DIALOG_GANGDRUGDEALER,
	DIALOG_GANGDRUGSHOP,
	DIALOG_GANGDRUGEDIT,
	DIALOG_GANGDRUGPRICES,
	DIALOG_GANGDRUGPRICE,
	DIALOG_GANGDRUGBUY,
	DIALOG_GANGDRUGDEPOSITS,
	DIALOG_GANGDRUGDEPOSIT,
	DIALOG_GANGDRUGWITHDRAWS,
	DIALOG_GANGDRUGWITHDRAW,
	DIALOG_FREENAMECHANGE,

 	DIALOG_BIZMENU,
	DIALOG_BIZNAME,
	DIALOG_BIZFEE,
	DIALOG_BIZSAFE,
	DIALOG_WITHDRAW,
	DIALOG_DEPOSIT,
	DIALOG_MESSAGE,
	DIALOG_BIZLOCK,
	DIALOG_POINTLIST,
	DIALOG_TURFLIST,
	DIALOG_NEWBWELCOME,
	//DIALOG_HELP,
	DIALOG_PAYCHECK,
	DIALOG_TOP,
	DIALOG_INV,
	DIALOG_RULES,
	DIALOG_LOCATE,
	DIALOG_LOCATELIST1,
	DIALOG_LOCATELIST2,
	DIALOG_LOCATELIST3,
	DIALOG_LOCATELISTC,
	DIALOG_LOCATEPOINTS,
	/*#if defined Christmas
	#else
		DIALOG_CAROL,
	#endif*/
	DIALOG_CREATEQUIZ,
	DIALOG_VIPLOCKER,
	DIALOG_VIPLOCKER1,
	DIALOG_VIPLOCKER2,

	DIALOG_TWEET,
}



enum
{
	VEHICLE_ENGINE,
	VEHICLE_LIGHTS,
	VEHICLE_ALARM,
	VEHICLE_DOORS,
	VEHICLE_BONNET,
	VEHICLE_BOOT,
	VEHICLE_OBJECTIVE
};

enum
{
	STASH_CAPACITY_CASH,
	STASH_CAPACITY_MATERIALS,
	STASH_CAPACITY_WEED,
	STASH_CAPACITY_COCAINE,
	STASH_CAPACITY_METH,
 	STASH_CAPACITY_PAINKILLERS,
 	STASH_CAPACITY_HPAMMO,
	STASH_CAPACITY_POISONAMMO,
	STASH_CAPACITY_FMJAMMO,
	STASH_CAPACITY_WEAPONS
};

enum
{
 	E_OBJECT_TYPE,
	E_OBJECT_INDEX_ID,
	E_OBJECT_EXTRA_ID,
	E_OBJECT_3DTEXT_ID,
 	E_OBJECT_OPENED,
 	E_OBJECT_WEAPONID,
 	E_OBJECT_AMMO,
 	E_OBJECT_FACTION,
 	E_OBJECT_FURNITURE,
 	E_OBJECT_X,
 	E_OBJECT_Y,
 	E_OBJECT_Z,
	E_OBJECT_LAND
};

enum
{
	EDIT_FURNITURE_PREVIEW = 1,
	EDIT_FURNITURE,
	E_OBJECT_WEAPON
};

enum
{
	EDIT_OBJECT_PREVIEW,
	EDIT_CLOTHING_PREVIEW,
	EDIT_CLOTHING,
	EDIT_COP_CLOTHING,
	EDIT_LAND_OBJECT_PREVIEW,
	EDIT_LAND_OBJECT,
	EDIT_LAND_GATE_MOVE
};

enum
{
	DEPLOY_SPIKESTRIP,
	DEPLOY_CONE,
	DEPLOY_ROADBLOCK,
	DEPLOY_BARREL,
	DEPLOY_FLARE
};

enum
{
 	BUSINESS_STORE,
 	BUSINESS_GUNSHOP,
 	BUSINESS_CLOTHES,
 	BUSINESS_GYM,
 	BUSINESS_RESTAURANT,
 	BUSINESS_AGENCY,
 	//BUSINESS_GASOLINE,
 	BUSINESS_BARCLUB,
	BUSINESS_DEALERSHIP,
};

enum
{
	ILLEGAL_GUNS,
	ILLEGAL_DRUGS,
	ILLEGAL_MATS
};
enum
{
	FACTION_NONE,
	FACTION_POLICE,
	FACTION_MEDIC,
	FACTION_NEWS,
	FACTION_GOVERNMENT,
	FACTION_HITMAN,
	FACTION_FEDERAL,
	FACTION_MECHANIC,
	FACTION_DOC,
	FACTION_SHERIFF
};

enum
{
	JOB_NONE = -1,
	JOB_FOODPANDA,
	JOB_COURIER,
	JOB_FISHERMAN,
	JOB_BODYGUARD,
	JOB_ARMSDEALER,
	JOB_MINER,
	JOB_TAXIDRIVER,
	JOB_DRUGDEALER,
	JOB_LAWYER,
	JOB_DETECTIVE,
	JOB_GARBAGEMAN,
	JOB_FORKLIFTER,
	JOB_LUMBERJACK,
	JOB_CONSTRUCTION,
	JOB_TAILOR,
};

enum
{
	CHECKPOINT_NONE = 0,
	CHECKPOINT_FOODPANDA,
	CHECKPOINT_GARBAGE,
	CHECKPOINT_TEST,
	CHECKPOINT_MINING,
 	CHECKPOINT_CONSTRUCTION,
	CHECKPOINT_PACKAGE,
	CHECKPOINT_MATS,
	CHECKPOINT_DRUGS,
	CHECKPOINT_HOUSE,
	CHECKPOINT_ROBBERY,
	CHECKPOINT_ROBBERYBIZ,
	CHECKPOINT_ROBBERYHOUSE,
	CHECKPOINT_FORKLIFTER,
	CHECKPOINT_LUMBERJACKRUN,
	CHECKPOINT_MISC
};

enum
{
	HANGUP_DROPPED,
	HANGUP_USER
};

enum
{
	MUSIC_NONE,
	MUSIC_MP3PLAYER,
	MUSIC_BOOMBOX,
	MUSIC_VEHICLE
};

enum
{
	ITEM_WEAPON,
	ITEM_SELLGUN,
	ITEM_MATERIALS,
	ITEM_WEED,
	ITEM_COCAINE,
	ITEM_METH,
	ITEM_PAINKILLERS,
	ITEM_SEEDS,
	ITEM_EPHEDRINE,
	ITEM_CASH,
	ITEM_HPAMMO,
	ITEM_BACKPACK,
	ITEM_POISONAMMO,
	ITEM_FMJAMMO
};

enum
{
	CAPACITY_MATERIALS,
	CAPACITY_WEED,
	CAPACITY_COCAINE,
	CAPACITY_METH,
	CAPACITY_PAINKILLERS,
	CAPACITY_SEEDS,
	CAPACITY_EPHEDRINE,
 	CAPACITY_HPAMMO,
	CAPACITY_POISONAMMO,
	CAPACITY_FMJAMMO
};

enum
{
  	LIMIT_HOUSES,
	LIMIT_BUSINESSES,
	LIMIT_GARAGES,
	LIMIT_VEHICLES
};

enum
{
	POINT_DRUGFACTORY = 1,
	POINT_DRUGDEN,
	POINT_CRACKHOUSE,
	POINT_AUTOEXPORT,
	POINT_FUEL,
	POINT_MATPICKUP1,
	POINT_MATPICKUP2,
	POINT_MATFACTORY1,
	POINT_MATFACTORY2
};

enum
{
	GANGWEAPON_VEST,
	GANGWEAPON_9MM,
	GANGWEAPON_SDPISTOL,
	GANGWEAPON_DEAGLE,
	GANGWEAPON_SHOTGUN,
	GANGWEAPON_SPAS12,
	GANGWEAPON_SAWNOFF,
	GANGWEAPON_TEC9,
	GANGWEAPON_UZI,
	GANGWEAPON_MP5,
	GANGWEAPON_AK47,
	GANGWEAPON_M4,
	GANGWEAPON_RIFLE,
	GANGWEAPON_SNIPER,
	GANGWEAPON_MOLOTOV
};

enum
{
	TAG_NORMAL,
	TAG_ADMIN,
	TAG_HELPER,
	TAG_AFK
};

enum
{
	AMMO_HP,
	AMMO_POISON,
	AMMO_FMJ
};

enum
{
	AMMOTYPE_NORMAL,
	AMMOTYPE_HP,
	AMMOTYPE_POISON,
	AMMOTYPE_FMJ
};

enum
{
	ZONETYPE_LAND = 1,
	ZONETYPE_TURF
};

enum
{
 	HOSPITAL_COUNTY= 1,
	HOSPITAL_ALLSAINTS = 2
};



enum rEnum
{
	rExists,
	rReporter,
	rAccepted,
	rHandledBy,
	rText[128],
	rTime
};

enum eventEnum
{
	eReady,
	eStarted,
	eLocked,
	eType, // (1) DM (2) TDM (3) Race
	eJoinText[128],
	Float:eHealth,
	Float:eArmor,
	Float:ePosX[2],
	Float:ePosY[2],
	Float:ePosZ[2],
	Float:ePosA[2],
	eInterior,
	eWorld,
	eWeapons[5],
	eSkin[2],
	eCS,
	eQS,
	eHeal,
	eNext
};

enum prioEnum
{
	prioType, // (1) Open (2) Hold (3) Countdown
	prioTimer
};
new PriorityInfo[prioEnum];

enum chopEnum
{
	cTime,
};
enum robEnum
{
	rTime,
};

enum mEnum
{
	Float:mPosX,
	Float:mPosY,
	Float:mPosZ,
	Float:mPosA,
	mInterior,
	mWorld
};

enum hEnum
{
	hExists,
	hID,
	hMapIcon,
	hOwnerID,
	hDescription[128],
	hOwner[MAX_PLAYER_NAME],
	hType,
	hPrice,
	hRentPrice,
	hLevel,
	hLocked,
	hTimestamp,
	Float:hPosX,
	Float:hPosY,
	Float:hPosZ,
	Float:hPosA,
	Float:hIntX,
	Float:hIntY,
	Float:hIntZ,
	Float:hIntA,
	hInterior,
	hWorld,
	hOutsideInt,
	hOutsideVW,
	hCash,
	hMaterials,
	hPot,
	hCrack,
	hMeth,
	hPainkillers,
	hWeapons[10],
	hHPAmmo,
	hPoisonAmmo,
	hFMJAmmo,
	hLabels,
	hPickup,
	hRobbing,
	hRobbed,
	Text3D:hText
};

enum gEnum
{
	gExists,
	gID,
	gOwnerID,
	gOwner[MAX_PLAYER_NAME],
	gType,
	gPrice,
	gLocked,
	gTimestamp,
	Float:gPosX,
	Float:gPosY,
	Float:gPosZ,
	Float:gPosA,
	Float:gExitX,
	Float:gExitY,
	Float:gExitZ,
	Float:gExitA,
	gWorld,
	gPickup,
	Text3D:gText
};
enum bEnum
{
	bExists,
	bID,
	bOwnerID,
	bDescription[128],
	bOwner[MAX_PLAYER_NAME],
	bName[56],
	bMessage[128],
	bType,
	bPrice,
	bEntryFee,
	bLocked,
	bTimestamp,
	Float:bPosX,
	Float:bPosY,
	Float:bPosZ,
	Float:bPosA,
	Float:bIntX,
	Float:bIntY,
	Float:bIntZ,
	Float:bIntA,
	bInterior,
	bWorld,
	bOutsideInt,
	bOutsideVW,
	bCash,
	bProducts,
	bPickup,
	bPrices[25],
	bMapIcon,
	bRobbed,
	bRobbing,
	Text3D:bText
};

enum eEnum
{
	eExists,
	eID,
	eOwnerID,
	eOwner[MAX_PLAYER_NAME],
	eName[40],
	eIcon,
	eLocked,
	Float:eRadius,
	Float:ePosX,
	Float:ePosY,
	Float:ePosZ,
	Float:ePosA,
	Float:eIntX,
	Float:eIntY,
	Float:eIntZ,
	Float:eIntA,
	eInterior,
	eWorld,
	eOutsideInt,
	eOutsideVW,
	eAdminLevel,
	eFactionType,
	eVIP,
	eVehicles,
	eFreeze,
	ePassword[64],
	eLabel,
	ePickup,
 	eMapIconID,
 	eMapIcon,
	Text3D:eText,
	eColor
};

enum cEnum
{
	cExists,
	cID,
	cName[32],
	cModel,
	cBone,
	cAttached,
	Float:cPosX,
	Float:cPosY,
	Float:cPosZ,
	Float:cRotX,
	Float:cRotY,
	Float:cRotZ,
	Float:cScaleX,
	Float:cScaleY,
	Float:cScaleZ,
	cAttachedIndex
};
enum vEnum
{
	vID,
	vOwnerID,
	vOwner[MAX_PLAYER_NAME],
	vModel,
	vPrice,
	vTickets,
	vLocked,
	vStolen,
	vPlate[32],
	Float:vHealth,
	Float:vPosX,
	Float:vPosY,
	Float:vPosZ,
	Float:vPosA,
	vColor1,
	vColor2,
	vPaintjob,
	vInterior,
	vWorld,
	vNeon,
	vNeonEnabled,
	vTrunk,
	vMods[14],
	vCash,
	vMaterials,
	vPot,
	vCrack,
	vMeth,
	vPainkillers,
	vWeapons[3],
	vHPAmmo,
	vPoisonAmmo,
	vFMJAmmo,
	vGang,
	vFactionType,
	vJob,
	vRespawnDelay,
	vObjects[2],
	vTimer,
	vMeal,
	Float:vMileage,
};

enum dEnum
{
	dExists,
	dType,
	Float:dPosX,
	Float:dPosY,
	Float:dPosZ,
	Float:dPosA,
	dObject
};

enum lkEnum
{
	lID,
	lExists,
	lFaction,
	Float:lPosX,
	Float:lPosY,
	Float:lPosZ,
	lInterior,
	lWorld,
	lLabel,
	lIcon,
	locKevlar[2],
    locMedKit[2],
    locNitestick[2],
    locMace[2],
    locDeagle[2],
    locShotgun[2],
    locMP5[2],
    locM4[2],
    locSpas12[2],
    locSniper[2],
    locCamera[2],
    locFireExt[2],
    locPainKillers[2],
	Text3D:lText,
	lPickup
};

enum lEnum
{
	lExists,
	lID,
	lOwnerID,
	lOwner[MAX_PLAYER_NAME],
	lPrice,
	Float:lMinX,
	Float:lMinY,
	Float:lMaxX,
	Float:lMaxY,
	Float:lHeight,
	Float:lX,
	Float:lY,
	Float:lZ,
	lGangZone,
	lArea,
	lLabels,
 	Text3D:lText,
	lPickup
};

enum ptEnum
{
	pExists,
	pName[32],
	pCapturedBy[MAX_PLAYER_NAME],
	pCapturedGang,
	pType,
	pProfits,
	pTime,
	Float:pPointX,
	Float:pPointY,
	Float:pPointZ,
	pPointInterior,
	pPointWorld,
	pCaptureTime,
	pCapturer,
	Text3D:pText,
	pPickup
};

enum tEnum
{
	tExists,
	tName[32],
	tCapturedBy[MAX_PLAYER_NAME],
	tCapturedGang,
	tType,
	tTime,
	Float:tMinX,
	Float:tMinY,
	Float:tMaxX,
	Float:tMaxY,
	Float:tHeight,
	tGangZone,
	tArea,
	tCaptureTime,
	tCapturer
};