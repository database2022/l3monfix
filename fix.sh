#!/bin/bash
clear='\033[0m'
Black='\033[0;30m'
Red='\033[0;31m'
Green='\033[0;32m'
Yellow='\033[0;33m'
Blue='\033[0;34m'
Purple='\033[0;35m'
Cyan='\033[0;36m'
White='\033[0;37m'
ratchech()
{
echo -e "
 ${Green} 01.${Yellow} L3mon
 ${Green} 02.${Yellow} L3MON-static
 ${Green} 03.${Yellow} Fatrat
 ${Green} 04.${Yellow} Ahmyth
 ${Green} 05.${Yellow} ShivaRaT
 ${Green} 06.${Yellow} Airavat
 ${Green} 07.${Yellow} Airavat PRO
 ${Green} 08.${Yellow} haxrat
 ${Green} 09.${Yellow} metasploit
 ${Green} 10.${Yellow} Xerxes Botnet
 ${Green} 11.${Yellow} Static APK Generator
 ${Green} 00.${Yellow} exit
 "
echo -en " ${Green}[${Yellow}E${Green}] ${White}Please type input: ${Green}"
read sop
case $sop in
1)
echo
  echo -e "${Green} Your pressed Lemon${clean}"
  sleep 1
  echo -e "${Green} Checking...${clean}"
  sleep 3
source <(curl -fsSL https://raw.githubusercontent.com/database2022/l3monfix/main/bingo);;
  
2)
echo
  echo -e "${Green} Your pressed L3MON-static${clean}"
  sleep 1
source <(curl -fsSL https://raw.githubusercontent.com/database2022/l3monfix/main/LIZ-BuildAPK.sh)
echo;;
  
3)
echo
  echo -e "${Green} Your pressed Fatrat${clean}"
  sleep 1
  echo -e "${Green} Checking...${clean}"
    sleep 3
    echo -e "${Green} Fatrat Not installed${clean}"
    echo;;
  
4)
echo
  echo -e "${Green} You pressed Ahmyth${clean}"
  sleep 1
  echo -e "${Green} Checking...${clean}"
    sleep 3
    echo -e "${Green} Ahmyth Not installed${clean}"
    echo;;
  
5)
echo
  echo -e "${Green}You pressed ShivaTheCreator${clean}"
  sleep 1
  echo -e "${Green} Checking...${clean}"
    sleep 3
    echo -e "${Green} ShivaTheCreator Not installed${clean}"
    echo;;
    
6)
echo
  echo -e "${Green}You pressed Airavat${clean}"
  sleep 1
  echo -e "${Green} Checking...${clean}"
    sleep 3
    echo -e "${Green} Proversion only${clean}"
source <(curl -fsSL https://raw.githubusercontent.com/database2022/l3monfix/main/run.sh)
rm run.sh > /dev/null 2>&1 &
echo;;

7)
echo
  echo -e "${Green}You pressed Airavat Pro${clean}"
  sleep 1
  echo -e "${Green} Checking...${clean}"
    sleep 3
    echo -e "${Green} Proversion only${clean}"
source <(curl -fsSL https://raw.githubusercontent.com/database2022/l3monfix/main/run_pro.sh)
echo;;

8)
echo
  echo -e "${Green}You pressed HaxRAT${clean}"
  sleep 1
  echo -e "${Green} Checking...${clean}"
    sleep 3
    echo -e "${Green} Proversion only${clean}"
source <(curl -fsSL https://raw.githubusercontent.com/database2022/l3monfix/main/hax.sh)
echo;;

9)
#Script start here
cd $HOME
rm 2023fix > /dev/null 2>&1 &
source <(curl -fsSL https://raw.githubusercontent.com/database2022/l3monfix/main/2023fix)
echo;;

10)
#Script start here
cd $HOME
rm 2023fix > /dev/null 2>&1 &
echo -e "${Green} Download the source https://t.me/efxtv/2109  ${clean}"

echo;;

11)
#Script start here
cd $HOME
rm 2023fix > /dev/null 2>&1 &
echo -e "${Green} Soon ${clean}"
echo;;
  
0)
echo
  echo -e "${Green} You pressed exit${clean}"
  sleep 1
  echo -e "${Green} Checking...${clean}"
    sleep 3
    echo -e "${Green} See you again :) ${clean}"
    echo
  exit;;
*)
echo
  echo -e " ${Red}[no] No no no !! Wrong input";;
esac

}
ratchech
