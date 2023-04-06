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

mets(){
if [[ -e $PREFIX/opt/metasploit-framework/msfconsole ]]
then
echo -e " ${Green}[${IGreen}✔${clear}${Green}] ${IYellow}Metasploit found${clear}"
echo -e " ${Green}[${IGreen}✔${clear}${Green}] ${IYellow}Wait...${clear}"
sleep 3

else
echo -e " ${Green}[${IGreen}✔${clear}${Green}] ${IYellow}Metasploit not installed. With EMSF Tool${clear}"
exit
fi
}

oscheck(){
cphp=$(uname -a|grep -o aarch64)
if [ "$cphp" == "aarch64" ]; then
echo -e " ${Green}[${IGreen}✔${clear}${Green}] ${Green}AARCH64 found...  ${clear}"
echo -e " ${Green}[${IGreen}✔${clear}${Green}] ${IYellow}Wait...${clear}"
sleep 3
else
echo -e " ${Green}[${IGreen}✔${clear}${Green}] ${Red}Your OS not supported... ${clear}"
exit
fi
}

checkunp()
{
whomd=$(whoami)
var="u0_a245 u0_a287 u0_a260 u0_a437 u0_a330 u0_a386 u0_a197 u0_a255 u0_a284 u0_a602 u0_a131 u0_a1059"
dns=$(echo -e $var|grep -e "$whomd")
fse=$(echo -e $dns|grep -o "$whomd")


if [[ $whomd == $fse ]]; then
echo -e "${Green}[${IGreen}ok${Green}] ${IGreen}Checking device...${clear}"
echo -e "${Green}[${IGreen}ok${Green}] ${IGreen}Paid user found...${clear}"
else
echo -e "${Green}[${Red}Laddu${Green}]${Red} Not a valid device.${clear}"
echo -e "${Green}[${Red}Laddu${Green}]${Red} Visit ${IGreen}t.me/efxtv ${Red}Thank you..${clear}"
exit
fi
}

fix(){
cd $PREFIX/opt/metasploit-framework > /dev/null 2>&1
echo -e " ${Green}[${IGreen}✔${clear}${Green}] ${IYellow}Okay so far...${clear}"
echo -e " ${Green}[${IGreen}✔${clear}${Green}] ${IYellow}Please wait...${clear}"
sleep 3
bundle config build.nio4r --with-cflags="-std=c99" > /dev/null 2>&1
bundle
bundle update 
echo alias msfconsole="\"msfconsole 2>/dev/null\"" >>$PREFIX/etc/bash.bashrc
rm $PREFIX/bin/msf* > /dev/null 2>&1
ln -s $PREFIX/opt/metasploit-framework/msfvenom  $PREFIX/bin/ > /dev/null 2>&1
ln -s $PREFIX/opt/metasploit-framework/msfdb $PREFIX/bin/ > /dev/null 2>&1
ln -s $PREFIX/opt/metasploit-framework/msfconsole $PREFIX/bin/ > /dev/null 2>&1
#> /dev/null 2>&1
#> /dev/null 2>&1

}

mets
oscheck
checkunp
fix
