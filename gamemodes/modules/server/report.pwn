REPORT_DialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch(dialogid)
    {
        case DIALOG_REPORT:
        {
            if(response)
            {
                if(listitem == 0)
                {
                    ShowPlayerDialog(playerid, DIALOG_REPORTDM, DIALOG_STYLE_INPUT, "Report a Deathmatcher Player", "Please input the player's id you want to report to:", "Confirm", "Back");
                }
                if(listitem == 1)
                {
                    ShowPlayerDialog(playerid, DIALOG_REPORTCF, DIALOG_STYLE_INPUT, "Report a Player Using Car Surf/Surfing", "Please input the player's id you want to report to:", "Confirm", "Back");
                }
                if(listitem == 2)
                {
                    ShowPlayerDialog(playerid, DIALOG_REPORTWH, DIALOG_STYLE_INPUT, "Report a Player Using Wall Hack", "Please input the player's id you want to report to:", "Confirm", "Back");
                }
                if(listitem == 3)// Must be the last
                {
                    ShowPlayerDialog(playerid, DIALOG_REPORT1, DIALOG_STYLE_LIST, "Player Concern Report List", "Faction Appeal\nGang Appeal\nPlayer Appeal\nRequest\n<<< Back Page", "Confirm", "Close");
                }
            }
        }
        case DIALOG_REPORT1:
        {
            if(response)
            {
                if(listitem == 0)
                {
                    ShowPlayerDialog(playerid, DIALOG_REPORTAPPEALFAC, DIALOG_STYLE_INPUT, "Faction Appeal Format", "Please input the description regarding to your request of Faction Appeal", "Send", "Back");
                }
                if(listitem == 1)
                {
                    ShowPlayerDialog(playerid, DIALOG_REPORTAPPEALGANG, DIALOG_STYLE_INPUT, "Gang Appeal Format", "Please input the description regarding to your request of Gang Appeal", "Send", "Back");
                }
                if(listitem == 2)
                {
                    ShowPlayerDialog(playerid, DIALOG_REPORTAPPEALPLAYER, DIALOG_STYLE_INPUT, "Player Appeal Format", "Please input the description regarding to your Player Appeal", "Send", "Back");
                }
                if(listitem == 3)
                {
                    ShowPlayerDialog(playerid, DIALOG_REPORTREQ, DIALOG_STYLE_INPUT, "Request Format", "Please input below your request to "SERVER_NAME"'s Staffs\n\nNote: You may request anything in regards on game only.", "Send", "Back");
                }
                if(listitem == 4)
                {
                    ShowPplayerDialog(playerid, DIALOG_REPORT, DIALOG_STYLE_LIST, "Reporting Concerns", "Report a DMer\nReport a Player Surfer\nReport a Wall Hacker Player\n>>> Next Page", "Confirm", "Close");
                }
            }
        }
        case DIALOG_REPORTDM:
        {
            if(!response)
            {
                ShowPlayerDialog(playerid, DIALOG_REPORT1, DIALOG_STYLE_LIST, "Player Concern Report List", "Faction Appeal\nGang Appeal\nPlayer Appeal\nRequest\n<<< Back Page", "Confirm", "Close");
            }
            else
            {
                SendReportToAdmin(playerid, inputtext, "Player Reported a DMer.");
            }
        }
    }
}

SendReportToAdmin(playerid, targetid, text[])
{
    SAM(COLOR_WHITE, "==================================");
    SAM(COLOR_YELLOW, "[REPORT]: "WHITE"A player has submitted their Report.");
    SAM(COLOR_WHITE, "Reporter's Name: "SVRCLR"%s", GetRPName(playerid));
    SAM(COLOR_AQUA, "Report from %s - Reporter ID: %i", GetRPName(playerid), playerid);
    SAM(COLOR_AQUA, "ID Reported: %i", targetid);
    SAM(COLOR_AQUA, "Report Message: %s", text);
    SAM(COLOR_WHITE, "==================================");
}