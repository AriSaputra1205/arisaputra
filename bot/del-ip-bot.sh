#!/bin/bash
# Token SatanFusionOfficial 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
    TOKEN="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"
    git clone https://github.com/freetunnel/iz /root/iz/ &> /dev/null
    clear
    echo ""
    echo -e "${g}         LIST IP VPS          $NC"
    grep -E "^###" "/root/iz/ip" | cut -d ' ' -f 2-6 | column -t | sort | uniq
    grep -E "^#&"  "/root/iz/ip" | cut -d ' ' -f 2-6 | column -t | sort | uniq

    read -p "Input IP Address To Delete : " ipdel
    name=$(cat /root/iz/ip | grep $ipdel | awk '{print $2}')
    exp=$(cat /root/iz/ip | grep $ipdel | awk '{print $3}')
    if [[ ${exp} == 'Lifetime' ]]; then
    sed -i "/^#&   $name   $exp $ipdel/,/^},{/d" /root/iz/ip
    else
    sed -i "/^### $name $exp $ipdel/,/^},{/d" /root/iz/ip
    fi
    cd /root/iz
    git config --global user.email "ariksaputra081205@gmail.com" &> /dev/null
    git config --global user.name "ARI VPN TUNNELING" &> /dev/null
    rm -rf .git &> /dev/null
    git init &> /dev/null
    git add . &> /dev/null
    git commit -m register &> /dev/null
    git branch -M main &> /dev/null
    git remote add origin https://github.com/AriSaputra1205/izin
    git push -f https://${TOKEN}@github.com/AriSaputra1205/izin.git &> /dev/null
    rm -rf /root/iz
    clear
    sleep 1
    echo "  Delete IP Address..."
    sleep 1
    echo "  Processing..."
    sleep 1
    echo "  Done!"
    sleep 1
