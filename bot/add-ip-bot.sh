#!/bin/bash
# // PROJECT XDXL STORE
url_izin="https://raw.githubusercontent.com/AriSaputra1205/arisaputra/refs/heads/main/regis/admin"
IP=$(curl -sS ipv4.icanhazip.com)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
checking_sc() {
  useexp=$(wget -qO- $url_izin | grep $IP | awk '{print $3}')
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m          404 NOT FOUND AUTOSCRIPT          \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}PERMISSION DENIED !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $IP \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      \033[0;36mWhatsapp${NC} wa.me/+6285279684327"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    exit
  fi
}
checking_sc
# Token SatanFusionOfficial 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
TOKEN="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"
today=`date -d "0 days" +"%Y-%m-%d"`
git clone https://github.com/AriSaputra1205/izin.git /root/ip/ &> /dev/null
clear
echo -e ""
read -p "Input IP Address : " ip
CLIENT_EXISTS=$(grep -w $ip /root/iz/ip | wc -l)
if [[ ${CLIENT_EXISTS} == '1' ]]; then
echo "IP Already Exist !"
rm -rf /root/ip
exit 0
fi
name=FTP-`</dev/urandom tr -dc A-Z0-9 | head -c4`
clear
read -p " Masukan waktu expired : " -e exp
exp2=`date -d "${exp} days" +"%Y-%m-%d"`
echo "### ${name} ${exp2} ${ip}" >> /root/iz/ip
cd /root/iz
git config --global user.email "ariksaputra081205@gmail.com" &> /dev/null
git config --global user.name "ARI TUNNELING" &> /dev/null
rm -rf .git &> /dev/null
git init &> /dev/null
git add . &> /dev/null
git commit -m register &> /dev/null
git branch -M main &> /dev/null
git remote add origin https://github.com/AriSaputra1205/izin
git push -f https://${TOKEN}@github.com/AriSaputra1205/izin.git &> /dev/null
rm -rf /root/ip
clear
