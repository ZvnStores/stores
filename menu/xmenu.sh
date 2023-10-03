#!/bin/bash
# Color Validation
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[31m'
green='\e[32m'
blue='\e[34m'
PURPLE='\e[35m'
cyan='\e[36m'
Lred='\e[91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
NC='\e[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
LIGHT='\033[0;37m'
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'       # White
BIYellow='\033[1;93m'       # Yellow
IPVPES="https://raw.githubusercontent.com/ZvnStores/izin/main/ip"
clear
ipsaya=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
checking_sc() {
  useexp=$(wget -qO- $IPVPES | grep $ipsaya | awk '{print $3}')
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m          404 NOT FOUND AUTOSCRIPT          \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}PERMISSION DENIED !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      \033[0;36mTelegram${NC} t.me/fv_stores"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    exit
  fi
}
checking_sc
clear
vlx=$(grep -c -E "^#& " "/etc/xray/config.json")
let vla=$vlx/2
vmc=$(grep -c -E "^### " "/etc/xray/config.json")
let vma=$vmc/2
# VPS Information
tls_v2ray_status=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
nontls_v2ray_status=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
vless_tls_v2ray_status=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
vless_nontls_v2ray_status=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
#Domain
domain=$(cat /etc/xray/domain)
#Status certificate
modifyTime=$(stat $HOME/.acme.sh/${domain}_ecc/${domain}.key | sed -n '7,6p' | awk '{print $2" "$3" "$4" "$5}')
modifyTime1=$(date +%s -d "${modifyTime}")
currentTime=$(date +%s)
stampDiff=$(expr ${currentTime} - ${modifyTime1})
days=$(expr ${stampDiff} / 86400)
remainingDays=$(expr 90 - ${days})
tlsStatus=${remainingDays}
if [[ ${remainingDays} -le 0 ]]; then
	tlsStatus="expired"
fi
# OS Uptime
uptime="$(uptime -p | cut -d " " -f 2-10)"

# STATUS SERVICE  TLS 
if [[ $tls_v2ray_status == "running" ]]; then 
   status_tls_v2ray=" ${BIYellow}Online ${NC}"
else
   status_tls_v2ray="${RED}  Not Running ${NC}  ( Error )${NC}"
fi

# STATUS SERVICE NON TLS V2RAY
if [[ $nontls_v2ray_status == "running" ]]; then 
   status_nontls_v2ray=" ${BIYellow}Online${NC}"
else
   status_nontls_v2ray="${RED}  Not Running ${NC}  ( Error )${NC}"
fi

# STATUS SERVICE VLESS HTTPS
if [[ $vless_tls_v2ray_status == "running" ]]; then
  status_tls_vless=" ${BIYellow}Online ${NC}"
else
  status_tls_vless="${RED}  Not Running ${NC}  ( Error )${NC}"
fi

# STATUS SERVICE VLESS HTTP
if [[ $vless_nontls_v2ray_status == "running" ]]; then
  status_nontls_vless=" ${BIYellow}Online ${NC}"
else
  status_nontls_vless="${RED}  Not Running ${NC}  ( Error )${NC}"
fi
# Download
#Download/Upload today
dtoday="$(vnstat -i eth0 | grep "today" | awk '{print $2" "substr ($3, 1, 1)}')"
utoday="$(vnstat -i eth0 | grep "today" | awk '{print $5" "substr ($6, 1, 1)}')"
ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload yesterday
dyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $2" "substr ($3, 1, 1)}')"
uyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $5" "substr ($6, 1, 1)}')"
tyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload current month
dmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $3" "substr ($4, 1, 1)}')"
umon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $6" "substr ($7, 1, 1)}')"
tmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $9" "substr ($10, 1, 1)}')"
fvs="\e[1;97;101m"
clear
echo -e "${BICyan}┌─────────────────────────────────────────────────┐\033[0m"
echo -e "${BICyan}│${fvs}                  • XRAY MENU •                  ${NC}${BICyan}│${NC}"
echo -e "${BICyan}└─────────────────────────────────────────────────┘\033[0m"
echo -e "${BICyan}┌─────────────────────────────────────────────────┐\033[0m"
echo -e "${BICyan}          XRAYS Vmess TLS         :$status_tls_v2ray"
echo -e "${BICyan}          XRAYS Vmess None TLS    :$status_nontls_v2ray"
echo -e "${BICyan}          XRAYS Vless TLS         :$status_tls_vless"
echo -e "${BICyan}          XRAYS Vless None TLS    :$status_nontls_vless"
echo -e "${BICyan}          XRAYS GRPC STATUS       :$status_nontls_vless"
echo -e "${BICyan}└─────────────────────────────────────────────────┘\033[0m"
echo -e "${BICyan}\033[0m ${BOLD}  ${GREEN}    ${BIYellow}  ${BIYellow}  VMESS  ${GREEN}      ${BIYellow}  VLESS  ${GREEN}     $NC "
echo -e "${BICyan}\033[0m ${Blue}            $vma              $vla                         $NC"
echo -e "${BICyan}┌─────────────────────────────────────────────────┐${NC}"
echo -e "${BICyan}│${fvs}               SCRIPT BY FV STORE                ${NC}${BICyan}│${NC}"
echo -e "${BICyan}└─────────────────────────────────────────────────┘${NC}"
echo -e " [\e[36m01\e[0m] ${BICyan}Create Vmess         ${NC}[\e[36m06\e[0m] ${BICyan}Create Vless"
echo -e " [\e[36m02\e[0m] ${BICyan}Trial Vmess          ${NC}[\e[36m07\e[0m] ${BICyan}Trial Vless"
echo -e " [\e[36m03\e[0m] ${BICyan}Renew Vmess          ${NC}[\e[36m08\e[0m] ${BICyan}Renew Vless"
echo -e " [\e[36m04\e[0m] ${BICyan}Delete Vmess         ${NC}[\e[36m09\e[0m] ${BICyan}Delete Vless"
echo -e " [\e[36m05\e[0m] ${BICyan}Cek User Vmess       ${NC}[\e[36m10\e[0m] ${BICyan}Cek User Vless"
echo -e ""
echo -e " [\e[36m•X\e[0m] ${BIYellow}Exit To Menu${NC}"
echo -e "${BICyan}┌─────────────────────────────────────────────────┐${NC}" | lolcat
echo -e "${BICyan}│ HARI ini${NC}: ${red}$ttoday$NC ${BICyan}KEMARIN${NC}: ${red}$tyest$NC ${BICyan}BULAN${NC}: ${red}$tmon$NC $NC"
echo -e "${BICyan}└─────────────────────────────────────────────────┘${NC}" | lolcat
echo -e ""
read -p " Select menu :  "  opt
case $opt in
1) clear ; add-ws ; exit ;;
2) clear ; trialvmess ; exit ;;
3) clear ; renew-ws ; exit ;;
4) clear ; del-ws ; exit ;;
5) clear ; cek-ws ; exit ;;
6) clear ; add-vless ; exit ;;
7) clear ; trialvless ; exit ;;
8) clear ; renew-vless ; exit ;;
9) clear ; del-vless ; exit ;;
10) clear ; cek-vless ; exit ;;
x) clear ; menu ;;
*) xmenu ;;
esac
