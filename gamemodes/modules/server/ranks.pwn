GetStaffRank(playerid)
{
	new string[64];

	if(pData[playerid][pAdmin] > 1)
	{
		switch(pData[playerid][pAdmin])
		{
			case 1: string = "Probitionary Administrator";
		    case 2: string = "Junior Administrator";
		    case 3: string = "General Administrator";
		    case 4: string = "Senior Administrator";
			case 5: string = "Head Administrator";
			case 6: string = "Lead Administrator";
			case 7: string = "Executive Manager";
			case 8: string = "Executive Director";
            case 9: string = "Community Manager";
            case 10: string = "Community Director";
		}
		return string;
	}
	if(pData[playerid][pHelper] > 0)
	{
    	switch(pData[playerid][pHelper])
    	{
			case 1: string = "Trial Helper";
			case 2: string = "Junior Helper";
			case 3: string = "Senior Helper";
			case 4: string = "Junior Advisor";
			case 5: string = "General Advisor";
			case 6: string = "Senior Advisor";
			case 7: string = "Advisory Director";
		}
	}
	else if(pData[playerid][pFormerAdmin])
	{
	    string = "Former Admin";
	}
	return string;
}

GetAdminDivision(playerid)
{
	new division[6];
	if(pData[playerid][pDeveloper])
	{
	    division = "DEV";
	}
	else if(pData[playerid][pDynamicAdmin])
	{
	    division = "DA";
	}
	else if(pData[playerid][pFactionMod])
	{
	    division = "FM";
	}
	else if(pData[playerid][pAdminPersonnel])
	{
	    division = "AP";
	}
	else if(pData[playerid][pGangMod])
	{
	    division = "GM";
	}
	else if(pData[playerid][pBanAppealer])
	{
	    division = "BA";
	}
	else if(pData[playerid][pEventMod])
	{
	    division = "EM";
	}
	else
	{
	    division = "";
	}
	return division;
}

GetAdminRank(playerid)
{
	new string[35];

	switch(pData[playerid][pAdmin])
	{
	    case 0: string = "None";
	    case 1: string = "Probitionary Administrator";
	    case 2: string = "Junior Administrator";
	    case 3: string = "General Administrator";
	    case 4: string = "Senior Administrator";
		case 5: string = "Head Administrator";
		case 6: string = "Lead Administrator";
		case 7: string = "Executive Manager";
		case 8: string = "Executive Director";
        case 9: string = "Community Manager";
        case 10: string = "Community Director";
	}

	return string;
}

GetColorARank(playerid)
{
	new string[35];

	switch(pData[playerid][pAdmin])
	{
	    case 0: string = "None";
	    case 1: string = "Probitionary Administrator";
	    case 2: string = "Junior Administrator";
	    case 3: string = "General Administrator";
	    case 4: string = "Senior Administrator";
		case 5: string = "Head Administrator";
		case 6: string = "Lead Administrator";
		case 7: string = "Executive Manager";
		case 8: string = "Executive Director";
        case 9: string = "Community Manager";
        case 10: string = "Community Director";
	}

	return string;
}
GetHelperRank(playerid)
{
	new string[24];

	switch(pData[playerid][pHelper])
	{
	    case 0: string = "None";
		case 1: string = "Trial Helper";
		case 2: string = "Junior Helper";
		case 3: string = "Senior Helper";
		case 4: string = "Junior Advisor";
		case 5: string = "General Advisor";
		case 6: string = "Senior Advisor";
		case 7: string = "Advisory Director";
	}

	return string;
}

GetAdminDivisionFull(playerid)
{
    new division[32];
	if(pData[playerid][pFactionMod])
	{
	    division = "Faction Moderator";
	}
	else if(pData[playerid][pGangMod])
	{
	    division = "Gang Moderator";
	}
	else if(pData[playerid][pBanAppealer])
	{
	    division = "Ban Appealer";
	}
	else if(pData[playerid][pPublicRelation])
	{
	    division = "Public Relation";
	}
	else if(pData[playerid][pSecurity])
	{
	    division = "Security";
	}
	else
	{
	    division = "";
	}
    return division;
}

GetStaffLeaderRank(playerid)
{
	new string[128];
	if(pData[playerid][pStaffLeader] && pData[playerid][pFactionMod])
	{
		string = "Faction Moderation Director";
	}
	else if(pData[playerid][pStaffLeader] && pData[playerid][pGangMod])
	{
		string = "Gang Moderation Director";
	}
	else if(pData[playerid][pStaffLeader] && pData[playerid][pBanAppealer])
	{
		string = "Ban Appealer Director";
	}
	else if(pData[playerid][pStaffLeader] && pData[playerid][pAdminPersonnel])
	{
		string = "Director of Admin Personnel";
	}
	else if(pData[playerid][pStaffLeader] && pData[playerid][pPublicRelation])
	{
		string = "Public Relation Director";
	}
	else if(pData[playerid][pStaffLeader] && pData[playerid][pSecurity])
	{
		string = "Security Team Director";
	}
	return string;
}