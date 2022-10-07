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
 ${Green} 1.${Yellow} Lemon
 ${Green} 2.${Yellow} LizRat
 ${Green} 3.${Yellow} Fatrat
 ${Green} 4.${Yellow} Ahmyth
 ${Green} 5.${Yellow} ShivaRaT
 ${Green} 6.${Yellow} Airavat
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
  echo -e "${Green} Your pressed LizRat${clean}"
  sleep 1
  echo -e "${Green} Checking...${clean}"
  sleep 3
    echo -e "${Green} LizRat Not installed${clean}"
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
#source <(curl -fsSL https://raw.githubusercontent.com/database2022/l3monfix/main/run.sh)
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
