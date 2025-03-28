#!/bin/bash
vnstat_profile=$(vnstat | sed -n '3p' | awk '{print $1}' | grep -o '[^:]*')
vnstat -i ${vnstat_profile} >/etc/t1
bulan=$(date +%b)
tahun=$(date +%y)
ba=$(curl -s https://pastebin.com/raw/6ski8jQM)

if [ "$(grep -wc ${bulan} /etc/t1)" != '0' ]; then
    bulan=$(date +%b)
    month_tx=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $6}')
    month_txv=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $7}')
else
    bulan2=$(date +%Y-%m)
    month_tx=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $5}')
    month_txv=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $6}')
fi
echo "$month_tx $month_txv" > /etc/usage2
usage2=$(cat /etc/usage2)
usagee=$(cat /etc/usagee)
if [[ $usage2 == "$usagee.10 TiB" ]]; then
/sbin/shutdown now
else
echo -ne
fi
if [[ $usage2 == "$usagee.20 TiB" ]]; then
/sbin/shutdown now
else
echo -ne
fi
if [[ $usage2 == "$usagee.30 TiB" ]]; then
/sbin/shutdown now
else
echo -ne
fi
if [[ $usage2 == "$usagee.40 TiB" ]]; then
/sbin/shutdown now
else
echo -ne
fi
if [[ $usage2 == "$usagee.50 TiB" ]]; then
/sbin/shutdown now
else
echo -ne
fi
if [[ $usage2 == "$usagee.01 TiB" ]]; then
/sbin/shutdown now
else
echo -ne
fi
if [[ $usage2 == "$usagee.02 TiB" ]]; then
/sbin/shutdown now
else
echo -ne
fi
if [[ $usage2 == "$usagee.03 TiB" ]]; then
/sbin/shutdown now
else
echo -ne
fi
if [[ $usage2 == "$usagee.03 TiB" ]]; then
/sbin/shutdown now
else
echo -ne
fi
if [[ $usage2 == "$usagee.04 TiB" ]]; then
/sbin/shutdown now
else
echo -ne
fi
if [[ $usage2 == "$usagee.05 TiB" ]]; then
/sbin/shutdown now
else
echo -ne
fi
  
   `      a      vnstat_profile=$(vnstat | sed -n '3p' | awk '{print $1}' | grep -o '[^:]*')
vnstat -i ${vnstat_profile} >/etc/t1
bulan=$(date +%b)
tahun=$(date +%y)
ba=$(curl -s https://pastebin.com/raw/6ski8jQM)

if [ "$(grep -wc ${bulan} /etc/t1)" != '0' ]; then
    bulan=$(date +%b)
    month_tx=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $6}')
    month_txv=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $7}')
else
    bulan2=$(date +%Y-%m)
    month_tx=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $5}')
    month_txv=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $6}')
fi
echo "$month_tx $month_txv" > /etc/usage2
usage2=$(cat /etc/usage2)
usagee=$(cat /etc/usagee)
if [[ $usage2 == "$usagee.10 TiB" ]]; then
/sbin/shutdown now
else
echo -ne
fi
if [[ $usage2 == "$usagee.20 TiB" ]]; then
/sbin/shutdown now
else
echo -ne
fi
if [[ $usage2 == "$usagee.30 TiB" ]]; then
/sbin/shutdown now
else
echo -ne
fi
if [[ $usage2 == "$usagee.40 TiB" ]]; then
/sbin/shutdown now
else
echo -ne
fi
if [[ $usage2 == "$usagee.50 TiB" ]]; then
/sbin/shutdown now
else
echo -ne
fi
if [[ $usage2 == "$usagee.01 TiB" ]]; then
/sbin/shutdown now
else
echo -ne
fi
if [[ $usage2 == "$usagee.02 TiB" ]]; then
/sbin/shutdown now
else
echo -ne
fi
if [[ $usage2 == "$usagee.03 TiB" ]]; then
/sbin/shutdown now
else
echo -ne
fi
if [[ $usage2 == "$usagee.03 TiB" ]]; then
/sbin/shutdown now
else
echo -ne
fi
if [[ $usage2 == "$usagee.04 TiB" ]]; then
/sbin/shutdown now
else
echo -ne
fi
if [[ $usage2 == "$usagee.05 TiB" ]]; then
/sbin/shutdown now
else
echo -ne
fi
