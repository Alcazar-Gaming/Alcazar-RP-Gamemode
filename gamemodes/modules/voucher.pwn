CMD:myvouchers(playerid, params[])
{
    if(pData[playerid][pJailTime] > 0)
        return SCM(playerid, COLOR_SYNTAX, "You cannot use this command while being in jail/prison.");

    ShowVouchers(playerid, playerid);
    return 1;
}

stock ShowVouchers(playerid, targetid)
{
	if(IsPlayerConnected(targetid))
	{
		new szDialog[1024], szTitle[MAX_PLAYER_NAME+9];
		SetPVarInt(playerid, "WhoIsThis", targetid);

		format(szTitle, sizeof(szTitle), "%s's Vouchers", GetPlayerNameEx(targetid));
		format(szDialog, sizeof(szDialog), "Car Voucher(s):\t\t\t{18F0F0}%d\7 Days VIP Voucher(s):\t\t{18F0F0}%d",
		pData[targetid][pVoucher][1], pData[targetid][pVoucher][2]);
		ShowPlayerDialog(playerid, DIALOG_VOUCHER, DIALOG_STYLE_LIST, szTitle, szDialog, "Select", "Close");
	}
	return 1;
}


public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch(dialogid)
	{
		case DIALOG_VOUCHER:
		{
			if(response)
			{
				switch(listitem)
				{
					case 0: // Car Voucher
					{
						if(pData[playerid][pVoucher][1] < 1)
						{
                            SetPVarInt(playerid, "NonVoucher", 1);
							return ShowPlayerDialogEx(playerid, DIALOG_VOUCHER2, DIALOG_STYLE_INPUT, "Voucher System", "You don't have any voucher left.", "Okay", "");
						}
						else if(pData[playerid][pVoucher][2] > 0)
						{
							SetPVarInt(playerid, "voucherdialog", 1);
							return ShowPlayerDialogEx(playerid, DIALOG_VOUCHER2, DIALOG_STYLE_MSGBOX, "Voucher System", "Are you sure you want to use your car voucher?", "Yes", "No");
						}
					}
					case 1: // SVIP Voucher
					{
                        if(pData[playerid][pVoucher][2] < 1)
                        {
                            SetPVarInt(playerid, "NonVoucher", 1);
							return ShowPlayerDialogEx(playerid, DIALOG_VOUCHER2, DIALOG_STYLE_INPUT, "Voucher System", "You don't have any voucher left.", "Okay", "");
                        }
                        else if(pData[playerid][pVoucher][2] > 0)
                        {
                            SetPVarInt(playerid, "voucherdialog", 1);
							return ShowPlayerDialogEx(playerid, DIALOG_VOUCHER2, DIALOG_STYLE_MSGBOX, "Voucher System", "Are you sure you want to use your car voucher?", "Yes", "No");
                        }
					}
                }
            }
        }
        case DIALOG_VOUCHERADMIN:
		{
			if(response)
			{
				if(!isnull(inputtext))
				{
					if(IsNumeric(inputtext))
					{
						if(!IsPlayerConnected(GetPVarInt(playerid, "WhoIsThis"))) return SendClientMessageEx(playerid, COLOR_GRAD1, "This player has disconnected from the server.");
						if(strval(inputtext) < 1) return DeletePVar(playerid, "voucherdialog"), DeletePVar(playerid, "WhoIsThis"), SendClientMessageEx(playerid, COLOR_GRAD1, "You can't give less than 1 voucher.");
						if(GetPVarInt(playerid,	"voucherdialog") == 1) // Car Voucher
						{
							new targetid = GetPVarInt(playerid, "WhoIsThis"),
								amount = strval(inputtext),
								szString[128];

							PlayerInfo[targetid][pVehVoucher] += amount;
							format(szString, sizeof(szString), "You have given %s %d car voucher(s).", GetPlayerNameEx(targetid), amount);
							SendClientMessageEx(playerid, COLOR_CYAN, szString);
							format(szString, sizeof(szString), "You have been given %d car voucher(s) by %s.", amount, GetPlayerNameEx(playerid));
							SendClientMessageEx(targetid, COLOR_CYAN, szString);
							format(szString, sizeof(szString), "%s has given %s(%d) %d car voucher(s).", GetPlayerNameEx(playerid), GetPlayerNameEx(targetid), GetPlayerSQLId(targetid), amount);
							Log("logs/vouchers.log", szString);
						}
						if(GetPVarInt(playerid,	"voucherdialog") == 2) // SVIP Voucher
						{
							new targetid = GetPVarInt(playerid, "WhoIsThis"),
								amount = strval(inputtext),
								szString[128];

							PlayerInfo[targetid][pSVIPVoucher] += amount;
							format(szString, sizeof(szString), "You have given %s %d Silver VIP voucher(s).", GetPlayerNameEx(targetid), amount);
							SendClientMessageEx(playerid, COLOR_CYAN, szString);
							format(szString, sizeof(szString), "You have been given %d Silver VIP voucher(s) by %s.", amount, GetPlayerNameEx(playerid));
							SendClientMessageEx(targetid, COLOR_CYAN, szString);
							format(szString, sizeof(szString), "%s has given %s(%d) %d Silver VIP voucher(s).", GetPlayerNameEx(playerid), GetPlayerNameEx(targetid), GetPlayerSQLId(targetid), amount);
							Log("logs/vouchers.log", szString);
						}
					}
					else ShowPlayerDialogEx(playerid, DIALOG_VOUCHERADMIN, DIALOG_STYLE_INPUT, "Voucher System - {FF0000}That's not a number", "Please enter how many would you like to give to this player.", "Enter", "Cancel");
				}
				else ShowPlayerDialogEx(playerid, DIALOG_VOUCHERADMIN, DIALOG_STYLE_INPUT, "Voucher System ", "Please enter how many would you like to give to this player.", "Enter", "Cancel");
			}
			DeletePVar(playerid, "voucherdialog");
			DeletePVar(playerid, "WhoIsThis");
		}
        case DIALOG_VOUCHER2:
        {
            if(response)
            {
                if(GetPVarInt(playerid, "NonVoucher") == 1)
                {
                    new szDialog[1024], szTitle[MAX_PLAYER_NAME+9];
                    SetPVarInt(playerid, "WhoIsThis", playerid);

                    format(szTitle, sizeof(szTitle), "%s's Vouchers", GetPlayerNameEx(playerid));
                    format(szDialog, sizeof(szDialog), "Car Voucher(s):\t\t\t{18F0F0}%d\7 Days VIP Voucher(s):\t\t{18F0F0}%d",
                    pData[playerid][pVoucher][1], pData[playerid][pVoucher][2]);
                    ShowPlayerDialog(playerid, DIALOG_VOUCHER, DIALOG_STYLE_LIST, szTitle, szDialog, "Select", "Close");
                    DeletePVar(playerid, "NonVoucher");
                }
            }
        }
    }
	#if defined V_OnDialogResponse
        return V_OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]);
    #else
        return 1;
    #endif
}
#if defined _ALS_OnDialogResponse
    #undef OnDialogResponse
#else
    #define _ALS_OnDialogResponse
#endif
#define OnDialogResponse V_OnDialogResponse
#if defined V_OnDialogResponse
    forward V_OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]);
#endif