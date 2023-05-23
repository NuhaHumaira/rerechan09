#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 $
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
#########################

cekray=`cat /root/log-install.txt | grep -ow "XRAY" | sort | uniq`

clear
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -p " Input : " domain
echo "$domain" > /etc/xray/domain
echo "$domain" > /etc/v2ray/domain
echo ""
if [ -z $domain ]; then
echo "SUCCSES CHANGE DOMAIN"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -n 1 -s -r -p "Press any key to back on menu"
menu
else
echo "IP=$domain" > /var/lib/SIJA/ipvps.conf
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo "Dont forget to renew cert"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
fi