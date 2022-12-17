#!/bin/bash
# Basic if statement
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


    if [ "$EUID" -ne 0 ]; then
        echo -e """
$blue=================================================================
\n$blue By Cyber Falcon team >>>>>>>>>>> $red R00t is required!           $blue||\n
$blue=================================================================
                   
"""
       exit 1
    fi

  
       echo -e "$red Welcome to AIO.$nc"

echo -e "$green" 
#Echo """ is used to show banner while selecting from menu 
echo """ 
 ▄▄▄       ██▓     ██▓     ██▓ ███▄    █  ▒█████   ███▄    █ ▓█████ 
▒████▄    ▓██▒    ▓██▒    ▓██▒ ██ ▀█   █ ▒██▒  ██▒ ██ ▀█   █ ▓█   ▀ 
▒██  ▀█▄  ▒██░    ▒██░    ▒██▒▓██  ▀█ ██▒▒██░  ██▒▓██  ▀█ ██▒▒███   
░██▄▄▄▄██ ▒██░    ▒██░    ░██░▓██▒  ▐▌██▒▒██   ██░▓██▒  ▐▌██▒▒▓█  ▄ 
 ▓█   ▓██▒░██████▒░██████▒░██░▒██░   ▓██░░ ████▓▒░▒██░   ▓██░░▒████▒ 
 ▒▒   ▓▒█░░ ▒░▓  ░░ ▒░▓  ░░▓  ░ ▒░   ▒ ▒ ░ ▒░▒░▒░ ░ ▒░   ▒ ▒ ░░ ▒░ ░ 
  ▒   ▒▒ ░░ ░ ▒  ░░ ░ ▒  ░ ▒ ░░ ░░   ░ ▒░  ░ ▒ ▒░ ░ ░░   ░ ▒░ ░ ░  ░"""
echo -e "$red  ░   ▒     ░ ░     ░ ░    ▒ ░   ░   ░ ░ ░ ░ ░ ▒     ░   ░ ░    ░   "
echo -e "$red      ░  ░    ░  ░    ░  ░ ░           ░     ░ ░           ░    ░  ░  $green V1"
echo -e "$green"
echo """                                                                         
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
echo -e "$Cyan========================================================================="
echo -e "$Cyan#		$Cyan 1 : AIO Host Information Gathering                            "
echo -e "$Cyan#		$Cyan 2 : AIO Web Vulnerability Scanning $nc			 "
echo -e "$Cyan#		$Cyan 3 : AIO Pen Testing tools download $nc		         "
echo -e "$Cyan#		$Cyan 4 : AIO FTP Brute-Force $nc		         "
echo -e "$Cyan#		$Cyan 5 : AIO SMB Brute-Force $nc		         "
echo -e "$Cyan###########################################################################"
echo -e "#		$Cyan 99: Exit$nc"
 
echo -e "$green"
echo -n "Choice>"
read VAR
if [ $VAR = 1 ]
then
echo -n "IP Address:> "
read VAR
echo -e "$red Nmap Scanning is starting.."
sleep 1
nmap -F $VAR -oA output/fast_$VAR | grep -v nmap 
echo -e "$Cyan Masscan Scanning is starting.."
sleep 1
masscan -p22,80,21,139,137,443,8080,8443,445 $VAR/24


fi

if [ $VAR = 2 ]
then
echo "Enter The complete URL:> " 
read VAR
echo -e "$red Wapiti Scan is starting..."
sleep 1
wapiti -u $VAR
fi

if [ $VAR = 3 ]
then
echo -e "$red Information Gather tools |             Web vuln Scanners                        ||" 
echo """
FBI Tool  ||  Phoneinfoga   ||    | || XSStrike  || BurpSuite_403Bypasser || GadgetProbe || 
				  | || HackBar   ||       GyoiThon        || WAScan      ||
Sherlock  ||          		  |  
___________________________________________________________________________________________						          
           (        )             |     Windows Privilege Escalation                      ||
   (      )\ )  ( /(  	          | || UACME  	 ||    PrivescCheck	  ||  BeRoot      ||
   )\    (()/(  )\())             |
((((_)(   /(_))((_)\   	          |                                                       || 
 )\ _ )\ (_))    ((_) 		  |     Command And Control (C2) Frameworks               || 
 (_)_\(_)|_ _|  / _ \  		  | || PoshC2    ||     SharpC2           || PS-Empire    ||  
  / _ \   | |  | (_) | 		  |                                       ||              || 
 /_/ \_\ |___|  \___/             |     Windows Post-Exploitation         ||              || 
			          | || Mimikatz  ||    PowerSploit        ||  PSRecon	  || 
#========================#        |
#     Happy Learning     #        |     Windows Defender Tools            ||              || 
#			 #        |
##########################        | || AMSIBypass || Stop Win Defender 	  ||    %_%       ||
#		        #         |
 #		         #        | 
  #		          #       | || 	    Windows Persistence           ||              || 
   #		           #      |
    #			    #     | || Win-Persistence ||                 ||              ||
      #		             #    |    
       #######################


"""
echo -e "Download will start now"
sleep 1
mkdir AIO-Folder
cd AIO-Folder
mkdir Pentest
cd Pentest
#InfoGathering Tools Download
wget https://github.com/sundowndev/phoneinfoga/archive/refs/tags/v2.10.0.zip
git clone https://github.com/sherlock-project/sherlock
git clone https://github.com/xHak9x/fbi
#WebVulnScanners Download
git clone https://github.com/gyoisamurai/GyoiThon
git clone https://github.com/FOGSEC/WAScan
wget https://github.com/d3vilbug/HackBar/archive/refs/tags/2.0.zip
wget https://github.com/s0md3v/XSStrike/archive/refs/tags/3.1.5.zip
git clone https://github.com/sting8k/BurpSuite_403Bypasser
wget https://github.com/BishopFox/GadgetProbe/archive/refs/tags/v1.0.zip


#Win Privilege escalation
git clone https://github.com/hfiref0x/UACME
wget https://github.com/AlessandroZ/BeRoot/archive/refs/tags/1.0.1.zip
git clone https://github.com/itm4n/PrivescCheck 
#Command and control frameworks download
wget https://github.com/EmpireProject/Empire/archive/refs/tags/2.5.zip
git clone https://github.com/SharpC2/SharpC2
git clone https://github.com/nettitude/PoshC2
#Windows Post-Exploitation 
wget https://github.com/gentilkiwi/mimikatz/releases/download/2.2.0-20220919/mimikatz_trunk.zip
wget https://github.com/PowerShellMafia/PowerSploit/archive/refs/tags/v3.0.0.zip
git clone https://github.com/gfoss/PSRecon
#WinPersistence Download
curl https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Methodology%20and%20Resources/Windows%20-%20Persistence.md -out WinPersistence
echo "$bkue Happy learning"
fi

if [ $VAR = 4 ]
then
echo -e "IP Address:>"
read VAR 
nmap -p 21 --script ftp-brute.nse $VAR -oA output/ftp_$VAR | grep -v nmap 
pwd
fi



if [ $VAR = 5 ]
then
echo "IP Address:>"
read VAR
nmap -sV -p 445 --script smb-brute $ip -oA output/smb_$ip 
mass
fi

