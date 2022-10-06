#!/bin/bash
#########################

# // Exporting Language to UTF-8
export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'
export LC_CTYPE='en_US.utf8'

# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;35m'
export o='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"
# / letssgoooo

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"

# // Exporting URL Host
export Server_URL="autosc.me/aio"
export Server_Port="443"
export Server_IP="underfined"
export Script_Mode="Stable"
export Auther="Bhoikfostyahya"

# // Root Checking
if [ "${EUID}" -ne 0 ]; then
		echo -e "${EROR} Please Run This Script As Root User !"
		exit 1
fi

# // Exporting IP Address
export IP=$( curl -s https://ipinfo.io/ip/ )


# // nginx
nginx=$( systemctl status nginx | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $nginx == "running" ]]; then
 status_nginx="${GREEN}✓${NC}"
else
 status_nginx="${RED}❌${NC}"
fi

clear
echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[47;1;30m                       • INFORMATION VPS •                    \E[0m"
echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\e[32;1mServer Uptime\e[0m     = $( uptime -p  | cut -d " " -f 2-10000 ) "
echo -e "\e[32;1mLocation Time\e[0m     = $( date -d "0 days" +"%d-%m-%Y | %X" )"
echo -e "\e[32;1mOperating System\e[0m  = $( cat /etc/os-release | grep -w PRETTY_NAME | sed 's/PRETTY_NAME//g' | sed 's/=//g' | sed 's/"//g' ) ( $( uname -m) )"
echo -e "\e[32;1mIP VPS \e[0m           = ${IP}"
echo -e "\e[32;1mDomain Server\e[0m     = $( cat /etc/xray/domain )"
echo -e "\e[32;1mAutoScript By    \e[0m = @GHReyz"
echo -e "\e[32;1mScript Validity  \e[0m = Lifetime"
echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[47;1;30m                        • MENU SCRIPT •                       \E[0m"
echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e " [${GREEN}01${NC}]${o} •${NC}Create Trojan Acc     [${GREEN}05${NC}]${o} •${NC}Create Vless Acc$NC"  
echo -e " [${GREEN}02${NC}]${o} •${NC}Delete Trojan Acc     [${GREEN}06${NC}]${o} •${NC}Delete Vless Acc$NC"
echo -e " [${GREEN}03${NC}]${o} •${NC}Reenew Trojan Acc     [${GREEN}07${NC}]${o} •${NC}Renew Vless Acc$NC"
echo -e " [${GREEN}04${NC}]${o} •${NC}Check Trojan Acc      [${GREEN}08${NC}]${o} •${NC}Check Vless Acc$NC"    
echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e " [${GREEN}09${NC}]${o} •${NC}Create Vmess Acc      [${GREEN}13${NC}]${o} •${NC}Speedtest Server $NC"
echo -e " [${GREEN}10${NC}]${o} •${NC}Delete Vmess Acc      [${GREEN}14${NC}]${o} •${NC}Reboot server $NC" 
echo -e " [${GREEN}11${NC}]${o} •${NC}Renew Vmess Acc       [${GREEN}15${NC}]${o} •${NC}Change Password VPS" 
echo -e " [${GREEN}12${NC}]${o} •${NC}Check Vmess Acc       [${GREEN}16${NC}]${o} •${NC}Check Usage Server"  
echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e " [ ${GREEN}SERVER XRAY ${NC} : ${status_nginx} ] "
echo -e "${RED}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""

read -p "Select From Options [ 1 - 14 ] : " menu
case $menu in
1)
clear
add-tr
;;
2)
clear
del-tr
;;
3)
clear
renew-tr
;;
4)
clear
cek-tr
;;
5)
clear
add-vless
;;
6)
clear
del-vless
;;
7)
clear
renew-vless
;;
8)
clear
cek-vless
;;
9)
clear
add-ws
;;
10)
clear
del-ws
;;
11)
clear
renew-ws
;;
12)
clear
cek-ws
;;
13)
clear
speedtest
;;
14)
reboot
exit
;;
15)
clear
vnstat
;;
16)
clear
passwd
;;
*)
clear
menu
;;
esac

