new uptime;

UpdateUpTime()
{
    new string[128];
    uptime++;

    format(string, sizeof(string), "%s elapsed", TimeConvert(uptime));
    DCC_SetBotActivity(string);
}

StopGamemode()
{
    // Recording The last server's info before ending its service
	new DCC_Channel:channel = DCC_FindChannelById("921323540547010581");
	new DCC_Embed:embed = DCC_CreateEmbed();
	new string[700];
	new stats[400+1];
	GetNetworkStats(stats, sizeof(stats));

	DCC_SetEmbedTitle(embed, "Server has stopped.");
	format(string, sizeof(string), "Run Time: %s\nStop Record Service Time: %s\nServer Tick Rate(FPS): %i\n\n%s", TimeConvert(uptime), GetDate(), GetServerTickRate(), stats);
	DCC_SetEmbedDescription(embed, string);
	DCC_SetEmbedFooter(embed, "All rights' reserved, Alcazar Roleplay 2022");
	DCC_SendChannelEmbedMessage(channel, embed);
    uptime = 0;
}