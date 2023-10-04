#!/bin/bash

zheevpn="https://raw.githubusercontent.com/ZvnStores/stores/main/"
res1(){
cd /usr/bin
wget -q -O /usr/bin/usernew "${zheevpn}ssh/usernew.sh"
wget -q -O /usr/bin/auto-reboot "${zheevpn}menu/auto-reboot.sh"
wget -q -O /usr/bin/restart "${zheevpn}menu/restart.sh"
wget -q -O /usr/bin/tendang "${zheevpn}ssh/tendang.sh"
wget -q -O /usr/bin/clearcache "${zheevpn}menu/clearcache.sh"
wget -q -O /usr/bin/running "${zheevpn}menu/running.sh"
wget -q -O /usr/bin/speedtest "${zheevpn}ssh/speedtest_cli.py"
wget -q -O /usr/bin/menu-ssh "${zheevpn}menu/menu-ssh.sh"
wget -q -O /usr/bin/xmenu "${zheevpn}menu/xmenu.sh"
wget -q -O /usr/bin/tmenu "${zheevpn}menu/tmenu.sh"
wget -q -O /usr/bin/menu-backup "${zheevpn}menu/menu-backup.sh"
wget -q -O /usr/bin/menu "${zheevpn}menu/menu.sh"
wget -q -O /usr/bin/menu-webmin "${zheevpn}menu/menu-webmin.sh"
wget -q -O /usr/bin/xp "${zheevpn}ssh/xp.sh"
wget -q -O /usr/bin/add-host "${zheevpn}ssh/add-host.sh"
wget -q -O /usr/bin/certv2ray "${zheevpn}vpn/certv2ray.sh"
wget -q -O /usr/bin/menu-set "${zheevpn}menu/menu-set.sh"
wget -q -O /usr/bin/about "${zheevpn}menu/about.sh"
wget -q -O /usr/bin/menu-backup "${zheevpn}menu/menu-backup.sh"
wget -q -O /usr/bin/trial "${zheevpn}ssh/trial.sh"
wget -q -O /usr/bin/usernew "${zheevpn}ssh/usernew.sh"
wget -q -O /usr/bin/add-tr "${zheevpn}xray/add-tr.sh"
wget -q -O /usr/bin/del-tr "${zheevpn}xray/del-tr.sh"
wget -q -O /usr/bin/cek-tr "${zheevpn}xray/cek-tr.sh"
wget -q -O /usr/bin/trialtrojan "${zheevpn}xray/trialtrojan.sh"
wget -q -O /usr/bin/renew-tr "${zheevpn}xray/renew-tr.sh"
wget -q -O /usr/bin/add-ws "${zheevpn}xray/addws.sh"
wget -q -O /usr/bin/del-ws "${zheevpn}xray/del-ws.sh"
wget -q -O /usr/bin/cek-ws "${zheevpn}xray/cek-ws.sh"
wget -q -O /usr/bin/renew-ws "${zheevpn}xray/renew-ws.sh"
wget -q -O /usr/bin/trialvmess "${zheevpn}xray/trialvmess.sh"
wget -q -O /usr/bin/add-vless "${zheevpn}xray/add-vless.sh"
wget -q -O /usr/bin/del-vless "${zheevpn}xray/del-vless.sh"
wget -q -O /usr/bin/cek-vless "${zheevpn}xray/cek-vless.sh"
wget -q -O /usr/bin/renew-vless "${zheevpn}xray/renew-vless.sh"
wget -q -O /usr/bin/trialvless "${zheevpn}xray/trialvless.sh"
wget -q -O /usr/bin/menu-trial "${zheevpn}menu/menu-trial.sh"
chmod +x /usr/bin/usernew
chmod +x /usr/bin/auto-reboot
chmod +x /usr/bin/restart
chmod +x /usr/bin/tendang
chmod +x /usr/bin/clearcache
chmod +x /usr/bin/running
chmod +x /usr/bin/speedtest
chmod +x /usr/bin/xmenu
chmod +x /usr/bin/tmenu
chmod +x /usr/bin/menu-ssh
chmod +x /usr/bin/menu-backup
chmod +x /usr/bin/menu
chmod +x /usr/bin/menu-webmin
chmod +x /usr/bin/xp
chmod +x /usr/bin/update
chmod +x /usr/bin/add-host
chmod +x /usr/bin/certv2ray
chmod +x /usr/bin/menu-set
chmod +x /usr/bin/about
chmod +x /usr/bin/add4
chmod +x /usr/bin/menu-backup
chmod +x /usr/bin/trial
chmod +x /usr/bin/usernew
chmod +x /usr/bin/add-tr
chmod +x /usr/bin/del-tr
chmod +x /usr/bin/cek-tr
chmod +x /usr/bin/trialtrojan
chmod +x /usr/bin/renew-tr
chmod +x /usr/bin/add-ws 
chmod +x /usr/bin/del-ws
chmod +x /usr/bin/cek-ws
chmod +x /usr/bin/renew-ws
chmod +x /usr/bin/trialvmess
chmod +x /usr/bin/add-vless
chmod +x /usr/bin/del-vless
chmod +x /usr/bin/cek-vless
chmod +x /usr/bin/renew-vless
chmod +x /usr/bin/trialvless
chmod +x /usr/bin/menu-trial
}

clear
fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    (
        [[ -e $HOME/fim ]] && rm $HOME/fim
        ${CMD[0]} -y >/dev/null 2>&1
        ${CMD[1]} -y >/dev/null 2>&1
        touch $HOME/fim
    ) >/dev/null 2>&1 &
    tput civis
    echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[0;32m#"
            sleep 0.1s
        done
        [[ -e $HOME/fim ]] && rm $HOME/fim && break
        echo -e "\033[0;33m]"
        sleep 1s
        tput cuu1
        tput dl1
        echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    done
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
    tput cnorm
}
netfilter-persistent
clear
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e " \e[1;97;101m             UPDATE SCRIPT              \e[0m"
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e " \033[1;91m Update script service\033[1;37m"
fun_bar 'res1'
echo -e "\033[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
rm -f update.sh
read -n 1 -s -r -p "Press [ Enter ] to back on menu"
menu
