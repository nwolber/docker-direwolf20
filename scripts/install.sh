#!/bin/sh
# Based on the original FTBInstall.sh created by the FTB team

MCVER="1.7.10"
DWVER="1_0_2"
JARFILE="minecraft_server.${MCVER}.jar"
DWFILE="direwolf20_${DWVER}.zip"
LAUNCHWRAPPER="net/minecraft/launchwrapper/1.11/launchwrapper-1.11.jar"

wget -O ${DWFILE} http://new.creeperrepo.net/FTB2/modpacks/direwolf20_17/1_0_2/direwolf20_17-server.zip
unzip ${DWFILE}

wget -O ${JARFILE} https://s3.amazonaws.com/Minecraft.Download/versions/${MCVER}/${JARFILE}
wget -O libraries/${LAUNCHWRAPPER} https://libraries.minecraft.net/${LAUNCHWRAPPER}
