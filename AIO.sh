#!/bin/bash
#Colors
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"

       echo -e "$red by Cyber Falcon Team.$nc"

#Installation
sleep 1
echo -e "Checking Installation $nc"
bash install-sb.sh >> /dev/null
echo -e "Checking Completed [$green✓$nc] $nc "
sleep 1
clear
#Startup
echo -e "$green" 
#Echo """ is used to show banner while selecting from menu 
echo """ 
 ▄▄▄       ██▓     ██▓     ██▓ ███▄    █  ▒█████   ███▄    █ ▓█████ 
▒████▄    ▓██▒    ▓██▒    ▓██▒ ██ ▀█   █ ▒██▒  ██▒ ██ ▀█   █ ▓█   ▀ 
▒██  ▀█▄  ▒██░    ▒██░    ▒██▒▓██  ▀█ ██▒▒██░  ██▒▓██  ▀█ ██▒▒███   
░██▄▄▄▄██ ▒██░    ▒██░    ░██░▓██▒  ▐▌██▒▒██   ██░▓██▒  ▐▌██▒▒▓█  ▄ 
 ▓█   ▓██▒░██████▒░██████▒░██░▒██░   ▓██░░ ████▓▒░▒██░   ▓██░░▒████▒
 ▒▒   ▓▒█░░ ▒░▓  ░░ ▒░▓  ░░▓  ░ ▒░   ▒ ▒ ░ ▒░▒░▒░ ░ ▒░   ▒ ▒ ░░ ▒░ ░
  ▒   ▒▒ ░░ ░ ▒  ░░ ░ ▒  ░ ▒ ░░ ░░   ░ ▒░  ░ ▒ ▒░ ░ ░░   ░ ▒░ ░ ░  ░
  ░   ▒     ░ ░     ░ ░    ▒ ░   ░   ░ ░ ░ ░ ░ ▒     ░   ░ ░    ░   
      ░  ░    ░  ░    ░  ░ ░           ░     ░ ░           ░    ░  ░  V1
                                                                          
============================================================================= 
|===============|
|= All-In-One  =|
|=             =|
|=======================>  Coded by Jihad Abdrazak https://github.com/homjxi0e/AIO                                                                          
"""                                                                
       

#echo -e "	               $red was Coded By Jihad Abdrazak      		  "

echo ""
echo -e "$yellow Select From Menu : $nc"
echo ""
echo -e " $Cyan ========================================================================="
echo -e "		$Cyan 1 : AIO Information Gathering"
echo -e "		$Cyan 2 : AIO Web Vulnerability Scanning $nc"
echo -e "		$Cyan 3 : AIO Pen Testing tools download $nc"
echo -e "		$Cyan 4 : AIO Popular Linux Problems solving$nc"
echo -e "		$Cyan 5 : Brute Force Instagram Account 2 $nc"
echo -e "		$Cyan 99: Exit$nc"
read -p "Choice >  " ch

if [ $ch = 3 ]; then
echo -e "			$Cyan fadad$nc"
firefox
read -p "Target IP >  " id
nmap $id

elif [ $ch == 99 ]; then
echo -e "$red Program Exit ...$nc"
sleep 0.25
exit 1
else
echo "Not Found 404 , Exit"
exit 1
fi
