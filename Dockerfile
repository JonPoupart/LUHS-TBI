#BASE IMAGE#
FROM ubuntu:20.04

#-----OS STUFF-----#
#Updates our OS
RUN apt-get update
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
#COPY /FileStorage/Configs/ALPHA/TrevAlphaCFG/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /FileStorage/Configs/ALPHA/TrevAlphaCFG/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /FileStorage/Configs/ALPHA/TrevAlphaCFG/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /FileStorage/Configs/ALPHA/TrevAlphaCFG/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /FileStorage/Configs/ALPHA/TrevAlphaCFG/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /FileStorage/Configs/ALPHA/TrevAlphaCFG/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /FileStorage/Configs/ALPHA/JoshAlphaCFG/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /FileStorage/Configs/ALPHA/JoshAlphaCFG/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /FileStorage/Configs/ALPHA/JoshAlphaCFG/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /FileStorage/Configs/ALPHA/JoshAlphaCFG/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /FileStorage/Configs/ALPHA/JoshAlphaCFG/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /FileStorage/Configs/ALPHA/JoshAlphaCFG/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /FileStorage/Configs/ALPHA/RemyAlphaCFG/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /FileStorage/Configs/ALPHA/RemyAlphaCFG/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /FileStorage/Configs/ALPHA/RemyAlphaCFG/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /FileStorage/Configs/ALPHA/RemyAlphaCFG/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /FileStorage/Configs/ALPHA/RemyAlphaCFG/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg
#COPY /FileStorage/Configs/ALPHA/RemyAlphaCFG/xxx.cfg /usr/share/games/teeworlds/data/xxx.cfg

#USERDIR - This is where the maps go
#-----COPY /FileStorage/Maps/BETA/xxx.map /root/.local/share/teeworlds/maps/xxx.map
#-----COPY /FileStorage/Maps/ALPHA/xxx.map /root/.local/share/teeworlds/maps/xxx.map
#-----BETA-----#
COPY /FileStorage/Maps/BETA/DanMap1.map /root/.local/share/teeworlds/maps/DanMap1.map
COPY /FileStorage/Maps/BETA/TrevDesertFinal.map /root/.local/share/teeworlds/maps/TrevDesertFinal.map
COPY /FileStorage/Maps/BETA/TrevDesertFinalSP.map /root/.local/share/teeworlds/maps/TrevDesertFinalSP.map
COPY /FileStorage/Maps/BETA/skyislands.map /root/.local/share/teeworlds/maps/skyislands.map
COPY /FileStorage/Maps/BETA/sweatynerd.map /root/.local/share/teeworlds/maps/sweatynerd.map
#-----ALPHA-----#
COPY /FileStorage/Maps/ALPHA/Dan/DNM1.map /root/.local/share/teeworlds/maps/DNM1.map
COPY /FileStorage/Maps/ALPHA/Dan/DNM2.map /root/.local/share/teeworlds/maps/DNM2.map
#COPY /FileStorage/Maps/ALPHA/Trev/xxx.map /root/.local/share/teeworlds/maps/xxx.map
#COPY /FileStorage/Maps/ALPHA/Trev/xxx.map /root/.local/share/teeworlds/maps/xxx.map
#COPY /FileStorage/Maps/ALPHA/Josh/xxx.map /root/.local/share/teeworlds/maps/xxx.map
#COPY /FileStorage/Maps/ALPHA/Josh/xxx.map /root/.local/share/teeworlds/maps/xxx.map
#COPY /FileStorage/Maps/ALPHA/Remy/xxx.map /root/.local/share/teeworlds/maps/xxx.map
#COPY /FileStorage/Maps/ALPHA/Remy/xxx.map /root/.local/share/teeworlds/maps/xxx.map

#-----MISC RUNS-----#
#This tells the container what port we want
EXPOSE 8303-8310/udp
