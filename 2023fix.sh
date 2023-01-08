#!/bin/bash

latestverr(){
curl https://raw.githubusercontent.com/rapid7/metasploit-framework/master/Gemfile.lock -s|grep metasploit-framework|head -1|sed 's/ //g'|sed 's#(# #g;s#)##g;s# #: #g'|awk '{print $2}'
}

inssstver(){
cat /opt/metasploit-framework/embedded/framework/Gemfile.lock|grep metasploit-framework|head -1|sed 's/ //g'|tr '[:lower:]' '[:upper:]'|sed 's#(# #g;s#)##g;s# #: #g'|awk '{print $2}'
}

verrr=$(latestverr)
intdv=$(inssstver)
adminpass=$(curl https://raw.githubusercontent.com/database2022/l3monfix/main/metaspssin.txt -s)

echo
  echo -e "${Green}You pressed Metasploit${clean}"
  sleep 1
  echo -e "${Green}Checking...${clean}"
    sleep 3
    echo -e "${Green}Metasploit $verrr Latest ${clean}"
    echo -e "${Green}Metasploit $intdv found as installed ${clean}"
echo -en "${Green}[${White}E${clear}${Green}] ${IGreen}Enter key provided by admin: ${Green}${clear}"
read adn

if [[ "$adminpass" == "$adn" ]]
then
echo -e "${Green}[${White}O${clear}${Green}] ${IGreen}Got it. You are in ${Green}${clear}"

echo -e "[${Yellow}+${clear}] Fixing metasploit..."
sed -i '342 {s/^/#/}' /data/data/com.termux/files/usr/lib/ruby/gems/3.2.0/gems/pry-0.13.1/lib/pry/code.rb
  sleep 3
echo -e "[${Yellow}+${clear}] Fixing...."
  sleep 3
echo -e "[${Yellow}+${clear}] Cheers..."
sleep 3
echo -e "[${Yellow}+${clear}] run msfconsole"
else
echo -e "${Green}[${Red}X${clear}${Green}] ${IGreen}Password changed by admin.\n    Visit ${Yellow}https://t.me/efxtv${clear}\n    ${Green}Visit Get in touch ${Yellow}@errorfix_tv ${Red}${clear}"
fi
