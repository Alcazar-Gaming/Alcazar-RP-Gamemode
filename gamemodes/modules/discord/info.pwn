#include <discord-connector>
#include <discord-cmd>

new RandomMessageAct[ ][ ] =
{
    ""SERVER_NAME"",
    ""REVISION"",
    "Owned by Stewart",
    "Developed by Stewart"
};

forward ChangingActivity();
public ChangingActivity()
{
    DCC_SetBotActivity(RandomMessageAct[random(sizeof(RandomMessageAct))]);
}

DCMD:information(user, channel, params[])
{
    new string[500], count;

    for(new i = 0; i < MAX_PLAYERS; i ++)
    {
        if(IsPlayerConnected(i))
        {
            count++;
        }
    }

    new DCC_Embed:embed = DCC_CreateEmbed();
    DCC_SetEmbedTitle(embed, ""SERVER_NAME"'s Information");
    format(string, sizeof(string), "**Internet Protocol Address:** SOON\n**GameMode Text:** %s\n**Players:** %i/29\n\n**Server Links:**\nhttps://discord.io/AlcazarNetwork\nhttps://bit.ly/3CJxvOo\nhttps://alcazargaming.mystrikingly.com/", REVISION, count);
    DCC_SetEmbedDescription(embed, string);
    DCC_SetEmbedImage(embed, "https://cdn.discordapp.com/attachments/905667779506634765/908172352414699551/Alcazar_Network_final.png");
    DCC_SetEmbedFooter(embed, "LLC Alcazar Roleplay. 2021-2022");
    DCC_SendChannelEmbedMessage(channel, embed);
    return 1;
}

DCMD:help(user, channel, params[])
{
    new DCC_Guild:guild = DCC_FindGuildById("905667779103977522");
    new DCC_Role:adminrole = DCC_FindRoleById("905667779145900090");
    new bool:hasRole;

    DCC_HasGuildMemberRole(guild, user, adminrole, hasRole);

    if(!hasRole)
    {
        new DCC_Embed:playerHelp = DCC_CreateEmbed();
        DCC_SetEmbedTitle(playerHelp, "My command Lists");
        DCC_SetEmbedDescription(playerHelp, "`COMMANDS: >help, >information, >global, >kick, >link, >ip, >players`");
        DCC_SetEmbedFooter(playerHelp, "LLC Alcazar Roleplay. 2021-2022");
        DCC_SendChannelEmbedMessage(channel, playerHelp);
    }
    else
    {
        new DCC_Embed:embed = DCC_CreateEmbed();
        DCC_SetEmbedTitle(embed, "My command Lists(For Admins)");
        DCC_SetEmbedDescription(embed, "`ADMIN COMMANDS: >stats`\n``COMMANDS: >help, >information, >global, >kick, >link, >ip, >players``");
        DCC_SetEmbedFooter(embed, "LLC Alcazar Roleplay. 2021-2022");
        DCC_SendChannelEmbedMessage(channel, embed);
    }
    return 1;
}

DCMD:pingstaff(user, channel, params[])
{
    new DCC_Guild:guild = DCC_FindGuildById("905667779103977522");
    new DCC_Role:verfrole = DCC_FindRoleById("934433462843220010");
    new DCC_Channel:pingchannel = DCC_FindChannelById("953927988041367573");
    new DCC_Role:adminrole = DCC_FindRoleById("905667779145900090");
    new bool:hasRole;

    DCC_HasGuildMemberRole(guild, user, verfrole, hasRole);
    if(!hasRole)
    {
        new DCC_Embed:embed = DCC_CreateEmbed();
        DCC_SetEmbedTitle(embed, "Error!");
        DCC_SetEmbedDescription(embed, "Your account is not currently verified on our server. Verify now!");
        return DCC_SendChannelEmbedMessage(channel, embed);
    }

    new id[DCC_ID_SIZE], string[128];
    DCC_GetUserId(user, id, sizeof(id));
    DCC_SetGuildRoleMentionable(guild, adminrole, true);

    format(string, sizeof(string), "Account <@%s> has conducted a ping staff. @everyone, please assist them.", id);
    DCC_SendChannelMessage(pingchannel, string);
    DCC_SendChannelMessage(channel, "You have pinged our admin. Please wait for their response.");
    DCC_SetGuildRoleMentionable(guild, adminrole, false);
    return 1;
}