#!/bin/bash
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
clear
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/vmess/.vmess.db")
        if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
                clear
        echo -e "\033[35m━━━━━━━━━━━━━━━━━━━━━━क⊹⊱ꕥ⊰⊹क━━━━━━━━━━━━━━━━━━━━━━\e[0m"
        echo -e "           Edit Quota Vmess          \E[0m"
        echo -e "\033[35m━━━━━━━━━━━━━━━━━━━━━━क⊹⊱ꕥ⊰⊹क━━━━━━━━━━━━━━━━━━━━━━\e[0m"
                echo ""
                echo "You have no existing clients!"
                echo ""
                echo -e "\033[35m━━━━━━━━━━━━━━━━━━━━━━क⊹⊱ꕥ⊰⊹क━━━━━━━━━━━━━━━━━━━━━━\e[0m"
        echo ""
        read -n 1 -s -r -p "Press any key to back on menu"
        menu
        fi

        clear
        echo -e "\033[35m━━━━━━━━━━━━━━━━━━━━━━क⊹⊱ꕥ⊰⊹क━━━━━━━━━━━━━━━━━━━━━━\e[0m"
    echo -e "           Edit Quota Vmess          \E[0m"
    echo -e "\033[35m━━━━━━━━━━━━━━━━━━━━━━क⊹⊱ꕥ⊰⊹क━━━━━━━━━━━━━━━━━━━━━━\e[0m"
    echo ""
        grep -E "^### " "/etc/vmess/.vmess.db" | cut -d ' ' -f 2 | column -t | sort | uniq
    echo ""
    red "tap enter to go back"
    echo -e "\033[35m━━━━━━━━━━━━━━━━━━━━━━क⊹⊱ꕥ⊰⊹क━━━━━━━━━━━━━━━━━━━━━━\e[0m"
        read -rp "Input Username : " user
    if [ -z $user ]; then
    menu
    else
    read -p "Limit (Quota): " Quota
    echo -e "$[$Quota * 1024 * 1024 * 1024]" > /etc/vmess/${user}
    clear
    echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo " VMESS Account Was Successfully Edited"
    echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo ""
    echo " Client Name  : $user"
    echo " Quota Ready  : $Quota GB"
    echo ""
    echo -e "\033[0;33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
    echo ""
    read -n 1 -s -r -p "Press any key to back on menu"
    menu
    fi
