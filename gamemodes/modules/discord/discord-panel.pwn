#include <discord-connector>
#include <discord-cmd>

DCMD:stats(user, channel, params[])
{
    new channelid[DCC_ID_SIZE];
    if(isnull(params))
    {
        return DCC_SendChannelMessage(channel, "**[USAGE]:** !stats [username]");
    }

    DCC_GetChannelId(channel, channelid, sizeof(channelid));

    dInfo[dcChannelID] = channelid;

    mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "SELECT * FROM users WHERE username = '%e'", params);
    mysql_tquery(connectionID, queryBuffer, "FindStats", "si", params, channelid);
    return 1;
}

forward FindStats(username[], DCC_Channel:channel);
public FindStats(username[], DCC_Channel:channel)
{
    channel = DCC_FindChannelById(dInfo[dcChannelID]);
    new rows = cache_get_row_count(connectionID);
    if(!rows)
    {
        DCC_SendChannelMessage(channel, "We cannot find any user with this name.");
    }
    else
    {
        new skin, age, gender, cash, string[128], online[20];
        skin = cache_get_field_content_int(0, "skin");
        age = cache_get_field_content_int(0, "age");
        gender = cache_get_field_content_int(0, "gender");
        cash = cache_get_field_content_int(0, "cash");

        new skinurl[64];

        switch(skin)
        {
            case 0: skinurl = "https://team.sa-mp.com/upload/c/cc/Skin_0.png";
            case 1: skinurl = "https://team.sa-mp.com/upload/2/2e/Skin_1.png";
            case 2: skinurl = "https://team.sa-mp.com/upload/1/10/Skin_2.png";
            case 3: skinurl = "https://team.sa-mp.com/upload/6/66/Skin_3.png";
            case 4: skinurl = "https://team.sa-mp.com/upload/0/08/Skin_4.png";
            case 5: skinurl = "https://team.sa-mp.com/upload/f/f1/Skin_5.png";
            case 6: skinurl = "https://team.sa-mp.com/upload/1/12/Skin_6.png";
            case 7: skinurl = "https://team.sa-mp.com/upload/9/90/Skin_7.png";
            case 8: skinurl = "https://team.sa-mp.com/upload/7/74/Skin_8.png";
            case 9: skinurl = "https://team.sa-mp.com/upload/2/22/Skin_9.png";
            case 10: skinurl = "https://team.sa-mp.com/upload/9/9b/Skin_10.png";
            case 299: skinurl = "https://team.sa-mp.com/upload/a/ac/Skin_299.png";
        }

        if(!IsPlayerOnline(username)) online = "Offline";
        else online = "Online";

        format(string, sizeof(string), "**Name:** %s\n\nSkin Age Gender Cash\n%i, %i, %i, $%i\n\nGame Status:\n%s", username, skin, age, gender, cash, online);
        new DCC_Embed:embed = DCC_CreateEmbed("User Control Panel", string);
        //format(string1, sizeof(string1), "%s", skinurl);
        new str[500];
        format(str, sizeof(str), "https://github.com/stewartab/Skin-ID/blob/main/Skin_%i.png", skin);
        //DCC_AddEmbedField(embed, "Skin", skin, false);
        DCC_SetEmbedThumbnail(embed, str);
        DCC_SetEmbedColor(embed, 0xFF00FF);
        DCC_SetEmbedFooter(embed, "LLC Stewart 2022");
        DCC_SendChannelEmbedMessage(channel, embed);
    }
}

/*DCMD:role(user, channel, params[])
{
    new DCC_Role:verfrole = DCC_FindRoleById("934433462843220010");
    new DCC_Guild:guild = DCC_FindGuildById("905667779103977522");
    new bool:hasRole;
    new roleid[DCC_ID_SIZE];
    new channelid[DCC_ID_SIZE];

    DCC_HasGuildMemberRole(guild, user, verfrole, hasRole);
    if(!hasRole)
    {
        new DCC_Embed:embed = DCC_CreateEmbed();
        DCC_SetEmbedTitle(embed, "Error!");
        DCC_SetEmbedDescription(embed, "Your account is not currently verified on our server. Verify now!");
        return DCC_SendChannelEmbedMessage(channel, embed);
    }

    DCC_GetChannelId(channel, channelid, sizeof(channelid));

    DCC_GetUserId(user, roleid, DCC_ID_SIZE);
    mysql_format(connectionID, queryBuffer, sizeof(queryBuffer), "SELECT * FROM users WHERE discordid = '%e'", roleid);
    mysql_tquery(connectionID, queryBuffer, "FindRoles", "i", roleid);
    return 1;
}

forward FindRoles(DCC_User:user);
public FindRoles(DCC_User:user)
{
    //Catching their details
    new DCC_Guild:guild = DCC_FindGuildById("905667779103977522");
    new DCC_Channel:channel = DCC_FindChannelById("941243272553181225");
    new gang, faction, admin, helper;
    channel = DCC_FindChannelById("941243272553181225");
    //gang = cache_get_field_content_int(0, "gang");
    //faction = cache_get_field_content_int(0, "faction");
    admin = cache_get_field_content_int(0, "admin");
    helper = cache_get_field_content_int(0, "helper");

    // Factions
    new factionrole, factions[128];
    switch(faction)
    {
        case 1: factionrole = DCC_FindRoleById("964519409295171714");// Government
        case 2: factionrole = DCC_FindRoleById("905667779137503262");// Police
        case 3: factionrole = DCC_FindRoleById("905667779124944925");// Ems
        case 4: factionrole = DCC_FindRoleById("905667779124944922");// Army
        case 5: factionrole = DCC_FindRoleById("964521079961972736");// Hitman
        case 6: factionrole = DCC_FindRoleById("905667779124944924");// mech
        case 7: factionrole = DCC_FindRoleById("905667779124944923");// News
        case 8: factionrole = DCC_FindRoleById("964520539131617300");// NBI
    }
    if(faction != 0)
    {
        new DCC_Embed:embed = DCC_CreateEmbed();
        format(factions, 128, "Role Added: <@&%s>", factionrole);
        DCC_SetEmbedDescription(embed, factions);
        DCC_SendChannelEmbedMessage(channel, embed);
        DCC_AddGuildMemberRole(guild, user, factionrole);
    }


    // Gangs
    if(gang != 0)
    {
        new DCC_Embed:embed = DCC_CreateEmbed();
        DCC_SetEmbedDescription(embed, "Automatic gang Role's been unavailable. Please be patient.");
        DCC_SendChannelEmbedMessage(channel, embed);
    }

    // Helper
    if(helper != 0)
    {
        new DCC_Role:helperrole = DCC_FindRoleById("905667779145900089");
        new DCC_Embed:embed = DCC_CreateEmbed();
        DCC_SetEmbedDescription(embed, "Role Added: <@&905667779145900089>");
        DCC_SendChannelEmbedMessage(channel, embed);
        DCC_AddGuildMemberRole(guild, user, helperrole);
    }

    // Admin
    if(admin != 0)
    {
        new DCC_Role:adminrole = DCC_FindRoleById("905667779145900090");
        new DCC_Embed:embed = DCC_CreateEmbed();
        DCC_SetEmbedDescription(embed, "Role Added: <@&905667779145900090>");
        DCC_SendChannelEmbedMessage(channel, embed);
        DCC_AddGuildMemberRole(guild, user, adminrole);
    }
}*/