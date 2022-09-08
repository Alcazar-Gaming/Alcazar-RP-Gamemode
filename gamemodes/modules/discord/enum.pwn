enum dcEnum
{
    dcChannelID[20+1],
    dcUser[DCC_USERNAME_SIZE],
    dcUserId[DCC_ID_SIZE],
    dcUserInternalId[20+1],
    // GMX name need to store vars
    dcGMX,
    dcGMXName[32 + 1],
    dcCode
}
new dInfo[dcEnum];