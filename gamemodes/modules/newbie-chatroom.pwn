CMD:n(playerid, params[]) return SendClientMessage(playerid, COLOR_GREY, "[ERROR]: "WHITE"That command isn't on the server. Try to use /newb aside from /n.");
CMD:newb(playerid, params[]) { return callcmd::newbie(playerid, params); }
CMD:newbie(playerid, params[])
{
    if(pData[playerid][pAdmin] < 1)
    {
        if(isnull(params))
        {
            return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: "WHITE"/(newb)ie [question]");
        }
        if(strlen(params) > 128)
        {
            return SendClientMessage(playerid, COLOR_GREY, "[ERROR]:"WHITE" Your text has been above 128 words!");
        }
        
        SetPVarInt(playerid, "Question", 1);
        SetPVarString(playerid, "Que", params);
        SendClientMessage(playerid, COLOR_WHITE, "(( You have sent your question to "SERVER_NAME"'s staff. Please wait for their response. ))");
        SendStaffMessage(COLOR_YELLOW, "New Question from: %s", GetPlayerNameEx(playerid));
        SendStaffMessage(COLOR_NEWBIE, "Asks: %s", params);
        SendStaffMessage(COLOR_WHITE, "You may answer them by using /newb.");
    }
    else
    {
        new option[10], id, answer[128], param[32];
        if(sscanf(params, "s[10]S()[32]", option, param))
        {
            SendClientMessage(playerid, COLOR_GREY, "[USAGE]: "WHITE"/newb [option]");
            SendClientMessage(playerid, COLOR_WHITE, "Option Available: ask, answer");
            return 1;
        }

        if(!strcmp(option, "ask", true))
        {
            if(isnull(param))
            {
                return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: "WHITE"/(newb)ie [ask] [question]");
            }
            if(strlen(param) > 128)
            {
                return SendClientMessage(playerid, COLOR_GREY, "[ERROR]:"WHITE" Your text has been above 128 words!");
            }
            
            SetPVarInt(playerid, "Question", 1);
            SetPVarString(playerid, "Que", param);
            SendClientMessage(playerid, COLOR_WHITE, "(( You have sent your question to "SERVER_NAME"'s staff. Please wait for their response. ))");
            SendStaffMessage(COLOR_YELLOW, "New Question from: %s", GetPlayerNameEx(playerid));
            SendStaffMessage(COLOR_NEWBIE, "Asks: %s", param);
            SendStaffMessage(COLOR_WHITE, "You may answer them by using /newb.");    
        }
        else if(!strcmp(option, "answer", true))
        {
            if(sscanf(param, "us[128]", id, answer))
            {
                return SendClientMessage(playerid, COLOR_GREY, "[USAGE]: "WHITE"/(newb)ie [answer] [player ID] [text]");
            }
            if(!IsPlayerConnected(id))
            {
                return SendClientMessage(playerid, COLOR_GREY, "[ERROR]: "WHITE"That Player isn't Connected.");
            }

            if(GetPVarInt(id, "Question") != 1)
            {
                return SendClientMessage(playerid, COLOR_GREY, "[ERROR]:"WHITE" That player isn't asking.");
            }
            else
            {
                new question[128], string[128], string1[128];
                GetPVarString(id, "Que", question, sizeof(question));

                format(string, sizeof(string), "Question from %s: %s", GetRPName(id), question);
                SendClientMessageToAll(COLOR_NEWBIE, string);
                format(string1, sizeof(string1), "Answered by %s %s: %s", GetStaffRank(playerid), GetRPName(playerid), answer);
                SendClientMessageToAll(COLOR_NEWBIE, string1);
                SM(id, COLOR_NEWBIE, "[QUESTION]: "WHITE"Your question has been answered by %s %s.", GetStaffRank(playerid), GetRPName(playerid));
            }
        }
    }
    return 1;
}