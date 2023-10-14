#!/bin/bash
# ====================
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

# USERNAME
rm -f /usr/bin/user
username=$(curl https://raw.githubusercontent.com/ZvnStores/izin/main/ip | grep $MYIP | awk '{print $2}')
echo "$username" >/usr/bin/user
# validity
rm -f /usr/bin/e
valid=$(curl https://raw.githubusercontent.com/ZvnStores/izin/main/ip | grep $MYIP | awk '{print $3}')
echo "$valid" >/usr/bin/e
# DETAIL ORDER
username=$(cat /usr/bin/user)
oid=$(cat /usr/bin/ver)
exp=$(cat /usr/bin/e)
clear
# CERTIFICATE STATUS
d1=$(date -d "$valid" +%s)
d2=$(date -d "$today" +%s)
certifacate=$(((d1 - d2) / 86400))
# VPS Information
DATE=$(date +'%Y-%m-%d')
datediff() {
    d1=$(date -d "$1" +%s)
    d2=$(date -d "$2" +%s)
    echo -e "$COLOR1 $NC Expiry In   : $(( (d1 - d2) / 86400 )) Days"
}
mai="datediff "$Exp" "$DATE""

# Status ExpiRED Active
Info="(${green}Active${NC})"
Error="(${RED}ExpiRED${NC})"
today=`date -d "0 days" +"%Y-%m-%d"`
Exp1=$(curl https://raw.githubusercontent.com/ZvnStores/izin/main/ip | grep $MYIP | awk '{print $3}')
if [[ $today < $Exp1 ]]; then
sts="${Info}"
else
sts="${Error}"
fi
clear

# =========================================
vlx=$(grep -c -E "^#& " "/etc/xray/config.json")
let vla=$vlx/2
vmc=$(grep -c -E "^### " "/etc/xray/config.json")
let vma=$vmc/2
ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"

trx=$(grep -c -E "^#! " "/etc/xray/config.json")
let tra=$trx/2
ssx=$(grep -c -E "^## " "/etc/xray/config.json")
let ssa=$ssx/2

zheevpn="https://raw.githubusercontent.com/ZvnStores/stores/main/update.sh"
UDPX="https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2"
# // Exporting Language to UTF-8
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
y='\033[1;33m'            # Yellow
g="\033[1;92m"            # Green
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\e[0m'
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
clear

SerOn=$(uptime -p | cut -d " " -f 2-10000)
###########- END COLOR CODE -##########
tram=$( free -h | awk 'NR==2 {print $2}' )
uram=$( free -h | awk 'NR==2 {print $3}' )
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
# Getting CPU Information
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
cpu_usage+=" %"
# TOTAL RAM
total_ram=` grep "MemTotal: " /proc/meminfo | awk '{ print $2}'`
totalram=$(($total_ram/1024))

persenmemori="$(echo "scale=2; $usmem*100/$tomem" | bc)"
#persencpu=
persencpu="$(echo "scale=2; $cpu1+$cpu2" | bc)"


# // Exporting Language to UTF-8

export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'


# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
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

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"

# // Clear
clear
clear && clear && clear
clear;clear;clear
cek=$(service ssh status | grep active | cut -d ' ' -f5)
if [ "$cek" = "active" ]; then
stat=-f5
else
stat=-f7
fi
ssh=$(service ssh status | grep active | cut -d ' ' $stat)
if [ "$ssh" = "active" ]; then
ressh="${green}ON${NC}"
else
ressh="${red}OFF${NC}"
fi
sshstunel=$(service stunnel4 status | grep active | cut -d ' ' $stat)
if [ "$sshstunel" = "active" ]; then
resst="${green}ON${NC}"
else
resst="${red}OFF${NC}"
fi
sshws=$(service ws-stunnel status | grep active | cut -d ' ' $stat)
if [ "$sshws" = "active" ]; then
ressshws="${green}ON${NC}"
else
ressshws="${red}OFF${NC}"
fi
ngx=$(service nginx status | grep active | cut -d ' ' $stat)
if [ "$ngx" = "active" ]; then
resngx="${green}ON${NC}"
else
resngx="${red}OFF${NC}"
fi
dbr=$(service dropbear status | grep active | cut -d ' ' $stat)
if [ "$dbr" = "active" ]; then
resdbr="${green}ON${NC}"
else
resdbr="${red}OFF${NC}"
fi
v2r=$(service xray status | grep active | cut -d ' ' $stat)
if [ "$v2r" = "active" ]; then
resv2r="${green}ON${NC}"
else
resv2r="${red}OFF${NC}"
fi
function addhost(){
clear
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -rp "Domain/Host: " -e host
echo ""
if [ -z $host ]; then
echo "????"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -n 1 -s -r -p "Press any key to back on menu"
setting-menu
else
echo "IP=$host" > /var/lib/scrz-prem/ipvps.conf
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo "Dont forget to renew cert"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
fi
}
function genssl(){
clear
systemctl stop nginx
domain=$(cat /var/lib/scrz-prem/ipvps.conf | cut -d'=' -f2)
Cek=$(lsof -i:80 | cut -d' ' -f1 | awk 'NR==2 {print $1}')
if [[ ! -z "$Cek" ]]; then
sleep 1
echo -e "[ ${red}WARNING${NC} ] Detected port 80 used by $Cek " 
systemctl stop $Cek
sleep 2
echo -e "[ ${green}INFO${NC} ] Processing to stop $Cek " 
sleep 1
fi
echo -e "[ ${green}INFO${NC} ] Starting renew cert... " 
sleep 2
/root/.acme.sh/acme.sh --set-default-ca --server letsencrypt
/root/.acme.sh/acme.sh --issue -d $domain --standalone -k ec-256
~/.acme.sh/acme.sh --installcert -d $domain --fullchainpath /etc/xray/xray.crt --keypath /etc/xray/xray.key --ecc
echo -e "[ ${green}INFO${NC} ] Renew cert done... " 
sleep 2
echo -e "[ ${green}INFO${NC} ] Starting service $Cek " 
sleep 2
echo $domain > /etc/xray/domain
systemctl restart xray
systemctl restart nginx
echo -e "[ ${green}INFO${NC} ] All finished... " 
sleep 0.5
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
}
export pak=$( cat /home/.ver)
IPVPS=$(curl -s ipinfo.io/ip )
fvs="\e[1;97;101m"
clear
echo -e "${BICyan} ┌━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┐${NC}"
echo -e "${BICyan} │ ${fvs}                 Fvstore Tunneling                 ${NC}${BICyan}│${NC}"
echo -e "${BICyan} └━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┘${NC}"
echo -e "${BICyan} ┌━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┐${NC}"
echo -e "${BICyan} │"
echo -e "${BICyan} │  ${BICyan}System OS :  ${BIYellow}$( cat /etc/os-release | grep -w PRETTY_NAME | sed 's/PRETTY_NAME//g' | sed 's/=//g' | sed 's/"//g' ) ( $( uname -m) )${NC}"
echo -e "${BICyan} │  ${BICyan}NS DOMAIN :  ${BIYellow}$(cat /root/nsdomain)${NC}"
echo -e "${BICyan} │  ${BICyan}DOMAIN    :  ${BIYellow}$(cat /etc/xray/domain)${NC}"
echo -e "${BICyan} │  ${BICyan}RAM       :  ${BIYellow}$uram MB / $tram MB${NC}"
echo -e "${BICyan} │  ${BICyan}IP VPS    :  ${BIYellow}$IPVPS${NC}"
#echo -e "${BICyan} │  ${BICyan}ISP VPS   :  ${BIYellow}$(cat /root/.ispvps)${NC}"
echo -e "${BICyan} │  ${BICyan}UPTIME    :  ${BIYellow}$SerOn${NC}"
echo -e "${BICyan} └━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┘${NC}"
echo -e "    ${BIYellow}SSH OVPN     VMESS             VLESS              TROJAN $NC" 
echo -e "    ${Blue} $ssh1            $vma              $vla               $tra $NC" 
echo -e "${BICyan} ┌━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┐${NC}"
echo -e "${BICyan} │  ${BICyan}[${BIWhite}01${BICyan}] [${BIYellow}Menu${BICyan}] SSH WS    ${BICyan}[${BIWhite}08${BICyan}] [${BIYellow}Menu${BICyan}] CEK RUNNING      ${BICyan}│${NC}"
echo -e "${BICyan} │  ${BICyan}[${BIWhite}02${BICyan}] [${BIYellow}Menu${BICyan}] XRAY      ${BICyan}[${BIWhite}09${BICyan}] [${BIYellow}Menu${BICyan}] INSTALL UDP      ${BICyan}│${NC}"
echo -e "${BICyan} │  ${BICyan}[${BIWhite}03${BICyan}] [${BIYellow}Menu${BICyan}] TROJAN    ${BICyan}[${BIWhite}10${BICyan}] [${BIYellow}Menu${BICyan}] INSTALL BOT      ${BICyan}│${NC}"
echo -e "${BICyan} │  ${BICyan}[${BIWhite}04${BICyan}] [${BIYellow}Menu${BICyan}] TRIAL     ${BICyan}[${BIWhite}11${BICyan}] [${BIYellow}Menu${BICyan}] LOCKED SSH       ${BICyan}│${NC}"
echo -e "${BICyan} │  ${BICyan}[${BIWhite}05${BICyan}] [${BIYellow}Menu${BICyan}] BACKUP    ${BICyan}[${BIWhite}12${BICyan}] [${BIYellow}Menu${BICyan}] UNLOCK SSH       ${BICyan}│${NC}"
echo -e "${BICyan} │  ${BICyan}[${BIWhite}06${BICyan}] [${BIYellow}Menu${BICyan}] SETTINGS  ${BICyan}[${BIWhite}13${BICyan}] [${BIYellow}Menu${BICyan}] INFO VPS         ${BICyan}│${NC}"
echo -e "${BICyan} │  ${BICyan}[${BIWhite}07${BICyan}] [${BIYellow}Menu${BICyan}] ADD-HOST  ${BICyan}[${BIWhite}14${BICyan}] [${BIYellow}Menu${BICyan}] UPDATE SCRIPT    ${BICyan}│${NC}"
echo -e "${BICyan} └━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┘${NC}"
echo -e "        ${BICyan}┌━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┐${NC}"
echo -e "        ${BICyan}│${NC} Version       : V1.01${NC}"
echo -e "        ${BICyan}│${NC} User          : $username ${NC}"
echo -e "        ${BICyan}│${NC} Expired       : $exp $NC"
echo -e "        ${BICyan}└━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┘${NC}"
echo -e ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; checking_sc ; menu-ssh ;;
2) clear ; checking_sc ; xmenu ;;
3) clear ; checking_sc ; tmenu ;;
4) clear ; checking_sc ; menu-trial ;;
5) clear ; checking_sc ; menu-backup ;;
6) clear ; checking_sc ; menu-set ;;
7) clear ; checking_sc ; add-host ;;
8) clear ; checking_sc ; running ;;
9) clear ; checking_sc ; wget --load-cookies /tmp/cookies.txt ${UDPX} -O install-udp && rm -rf /tmp/cookies.txt && chmod +x install-udp && ./install-udp ;;
10) clear ; checking_sc ; xolpanel ;;
11) clear ; checking_sc ; lock ;;
12) clear ; checking_sc ; unlock ;;
13) clear ; checking_sc ; gotop ; menu ;;
14) clear ; checking_sc ; wget ${zheevpn} && chmod +x update.sh && ./update.sh ; rm -rf update.sh ;;
0) clear ; checking_sc ; menu ;;
x) exit ;;
*) menu ;;
esac
