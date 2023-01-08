#!/bin/bash
echo -en "Enter password : "
read adds
adminpass=$(curl https://raw.githubusercontent.com/database2022/l3monfix/main/metaspssin.txt -s)
if [[ "$adminpass" == "$adds" ]]
then
  echo "Got it"
else
#show error
echo "Here will be the output"
fi
