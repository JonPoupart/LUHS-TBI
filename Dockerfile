#BASE IMAGE#
FROM ubuntu:20.04

#-----OS STUFF-----#
#Updates our package lists
RUN apt-get update
#Upgrades our system based on the package lists
RUN apt-get install upgrade
#Installs teeworlds-server
RUN apt-get install -y teeworlds-server pwgen

#-----FILES AND DIRECTORIES-----#

#DATADIR - This is where the configs go
#-----COPY /FileStorage/Configs/BETA/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#-----COPY /FileStorage/Configs/ALPHA/xxxAlphaCFG/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#-----BETA-----#
COPY /FileStorage/Configs/BETA/DanS1VM1.cfg /usr/share/games/teeworlds/data/DanS1VM1.cfg
COPY /FileStorage/Configs/BETA/TW_secretproject.cfg /usr/share/games/teeworlds/data/TW_secretproject.cfg
COPY /FileStorage/Configs/BETA/TW_Hyperspeed.cfg /usr/share/games/teeworlds/data/TW_Hyperspeed.cfg
COPY /FileStorage/Configs/BETA/TW_SloMo.cfg /usr/share/games/teeworlds/data/TW_SloMo.cfg
COPY /FileStorage/Configs/BETA/JR_speeeeed.cfg /usr/share/games/teeworlds/data/JR_speeeeed.cfg
COPY /FileStorage/Configs/BETA/JR_Lowgravity.cfg /usr/share/games/teeworlds/data/JR_Lowgravity.cfg
COPY /FileStorage/Configs/BETA/rfinal.cfg /usr/share/games/teeworlds/data/rfinal.cfg
COPY /FileStorage/Configs/BETA/Remy_grav.cfg /usr/share/games/teeworlds/data/Remy_grav.cfg
#-----ALPHA-----#
COPY /FileStorage/Configs/ALPHA/DanAlphaCFG/DNM1CTF.cfg /usr/share/games/teeworlds/data/DNM1CTF.cfg
COPY /FileStorage/Configs/ALPHA/DanAlphaCFG/DNM2CTF.cfg /usr/share/games/teeworlds/data/DNM2CTF.cfg
COPY /FileStorage/Configs/ALPHA/DanAlphaCFG/DNM1TDM.cfg /usr/share/games/teeworlds/data/DNM1TDM.cfg
COPY /FileStorage/Configs/ALPHA/DanAlphaCFG/DNM2TDM.cfg /usr/share/games/teeworlds/data/DNM2TDM.cfg
COPY /FileStorage/Configs/ALPHA/DanAlphaCFG/DNM1MOD.cfg /usr/share/games/teeworlds/data/DNM1MOD.cfg
COPY /FileStorage/Configs/ALPHA/DanAlphaCFG/DNM2MOD.cfg /usr/share/games/teeworlds/data/DNM2MOD.cfg
COPY /FileStorage/Configs/ALPHA/TrevAlphaCFG/TWM1CTF.cfg /usr/share/games/teeworlds/data/TWM1CTF.cfg
COPY /FileStorage/Configs/ALPHA/TrevAlphaCFG/TWM2CTF.cfg /usr/share/games/teeworlds/data/TWM2CTF.cfg
COPY /FileStorage/Configs/ALPHA/TrevAlphaCFG/TWM1TDM.cfg /usr/share/games/teeworlds/data/TWM1TDM.cfg
COPY /FileStorage/Configs/ALPHA/TrevAlphaCFG/TWM2TDM.cfg /usr/share/games/teeworlds/data/TWM2TDM.cfg
COPY /FileStorage/Configs/ALPHA/TrevAlphaCFG/TWM1MOD.cfg /usr/share/games/teeworlds/data/TWM1MOD.cfg
COPY /FileStorage/Configs/ALPHA/TrevAlphaCFG/TWM2MOD.cfg /usr/share/games/teeworlds/data/TWM2MOD.cfg
#COPY /FileStorage/Configs/ALPHA/JoshAlphaCFG/JRM1CTF.cfg /usr/share/games/teeworlds/data/JRM1CTF.cfg
#COPY /FileStorage/Configs/ALPHA/JoshAlphaCFG/JRM2CTF.cfg /usr/share/games/teeworlds/data/JRM2CTF.cfg
#COPY /FileStorage/Configs/ALPHA/JoshAlphaCFG/JRM1TDM.cfg /usr/share/games/teeworlds/data/JRM1TDM.cfg
#COPY /FileStorage/Configs/ALPHA/JoshAlphaCFG/JRM2TDM.cfg /usr/share/games/teeworlds/data/JRM2TDM.cfg
#COPY /FileStorage/Configs/ALPHA/JoshAlphaCFG/JRM1MOD.cfg /usr/share/games/teeworlds/data/JRM1MOD.cfg
#COPY /FileStorage/Configs/ALPHA/JoshAlphaCFG/JRM2MOD.cfg /usr/share/games/teeworlds/data/JRM2MOD.cfg
#COPY /FileStorage/Configs/ALPHA/RemyAlphaCFG/RHM1CTF.cfg /usr/share/games/teeworlds/data/RHM1CTF.cfg
#COPY /FileStorage/Configs/ALPHA/RemyAlphaCFG/RHM2CTF.cfg /usr/share/games/teeworlds/data/RHM2CTF.cfg
#COPY /FileStorage/Configs/ALPHA/RemyAlphaCFG/RHM1TDM.cfg /usr/share/games/teeworlds/data/RHM1TDM.cfg
#COPY /FileStorage/Configs/ALPHA/RemyAlphaCFG/RHM2TDM.cfg /usr/share/games/teeworlds/data/RHM2TDM.cfg
#COPY /FileStorage/Configs/ALPHA/RemyAlphaCFG/RHM1MOD.cfg /usr/share/games/teeworlds/data/RHM1MOD.cfg
#COPY /FileStorage/Configs/ALPHA/RemyAlphaCFG/RHM2MOD.cfg /usr/share/games/teeworlds/data/RHM2MOD.cfg

#USERDIR - This is where the maps go
#-----COPY /FileStorage/Maps/BETA/xxx.map /root/.local/share/teeworlds/maps/xxx.map
#-----COPY /FileStorage/Maps/ALPHA/xxx.map /root/.local/share/teeworlds/maps/xxx.map
#-----BETA-----#
COPY /FileStorage/Maps/BETA/DanMap1.map /root/.local/share/teeworlds/maps/DanMap1.map
COPY /FileStorage/Maps/BETA/TrevBetaMaps/TrevDesertFinal.map /root/.local/share/teeworlds/maps/TrevDesertFinal.map
COPY /FileStorage/Maps/BETA/TrevBetaMaps/TrevDesertFinalSP.map /root/.local/share/teeworlds/maps/TrevDesertFinalSP.map
COPY /FileStorage/Maps/BETA/skyislands.map /root/.local/share/teeworlds/maps/skyislands.map
COPY /FileStorage/Maps/BETA/sweatynerd.map /root/.local/share/teeworlds/maps/sweatynerd.map
#-----ALPHA-----#
COPY /FileStorage/Maps/ALPHA/Dan/DNM1.map /root/.local/share/teeworlds/maps/DNM1.map
COPY /FileStorage/Maps/ALPHA/Dan/DNM2.map /root/.local/share/teeworlds/maps/DNM2.map
COPY /FileStorage/Maps/ALPHA/Trev/TWM1.map /root/.local/share/teeworlds/maps/TWM1.map
COPY /FileStorage/Maps/ALPHA/Trev/TWM2.map /root/.local/share/teeworlds/maps/TWM2.map
#COPY /FileStorage/Maps/ALPHA/Josh/JRM1.map /root/.local/share/teeworlds/maps/JRM1.map
#COPY /FileStorage/Maps/ALPHA/Josh/JRM2.map /root/.local/share/teeworlds/maps/JRM2.map
#COPY /FileStorage/Maps/ALPHA/Remy/RHM1.map /root/.local/share/teeworlds/maps/RHM1.map
#COPY /FileStorage/Maps/ALPHA/Remy/RHM2.map /root/.local/share/teeworlds/maps/RHM2.map

#-----MISC RUNS-----#
#This tells the container what port we want
EXPOSE 8303-8310/udp
