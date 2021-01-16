#!/bin/sh
# This mirror for Nethunter 3.0
# echo "deb http://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib" > /etc/apt/sources.list
apt update
apt install -y pppoe tshark

touch /etc/ppp/pppoe-server-options
echo -e "require-pap" > /etc/ppp/pppoe-server-options
echo -e "lcp-echo-interval 10" >> /etc/ppp/pppoe-server-options
echo -e "lcp-echo-failure 2" >> /etc/ppp/pppoe-server-options

echo -e "* * * *" > /etc/ppp/pap-secrets
