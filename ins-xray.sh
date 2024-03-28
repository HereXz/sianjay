# Decrypted by K-fuscator
# Github- https://github.com/KasRoudra/k-fuscator

export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"
mkdir /user/curent > /dev/null 2>&1
touch /user/current
clear
echo "IP=$domain" > /var/lib/alf-prem/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/xray/domain)
else
domain=$IP
fi
echo -e "[ ${GREEN}INFO${NC} ] Checking... "
sleep 1
echo -e "[ ${GREEN}INFO$NC ] Setting ntpdate"
sleep 1
domain=$(cat /etc/xray/domain)
apt install iptables iptables-persistent -y
apt install curl socat xz-utils wget apt-transport-https gnupg gnupg2 gnupg1 dnsutils lsb-release -y
apt install socat cron bash-completion ntpdate -y
ntpdate -u pool.ntp.org
apt -y install chrony
timedatectl set-ntp true
systemctl enable chrony && systemctl restart chrony
timedatectl set-timezone Asia/Jakarta
apt install curl pwgen openssl netcat cron -y
rm -fr /var/log/xray
rm -fr /var/log/trojan
rm -fr /home/vps/public_html
mkdir -p /var/log/xray
mkdir -p /var/log/trojan
mkdir -p /home/vps/public_html
chown www-data.www-data /var/log/xray
chown www-data.www-data /etc/xray
chmod +x /var/log/xray
chmod +x /var/log/trojan
touch /var/log/xray/access.log
touch /var/log/xray/error.log
touch /var/log/xray/access2.log
touch /var/log/xray/error2.log
rm -fr /root/log-limit.txt
rm -fr /root/log-reboot.txt
touch /root/log-limit.txt
touch /root/log-reboot.txt
touch /home/limit
echo "" > /root/log-limit.txt
echo "" > /root/log-reboot.txt
cd /root/
apt install wondershaper -y
git clone https://github.com/magnific0/wondershaper.git >/dev/null 2>&1
cd wondershaper
make install
cd
rm -fr /root/wondershaper
echo > /home/limit
install_ssl(){
if [ -f "/usr/bin/apt-get" ];then
isDebian=`cat /etc/issue|grep Debian`
if [ "$isDebian" != "" ];then
apt-get install -y nginx certbot
apt install -y nginx certbot
sleep 3s
else
apt-get install -y nginx certbot
apt install -y nginx certbot
sleep 3s
fi
else
yum install -y nginx certbot
sleep 3s
fi
systemctl stop nginx.service
if [ -f "/usr/bin/apt-get" ];then
isDebian=`cat /etc/issue|grep Debian`
if [ "$isDebian" != "" ];then
echo "A" | certbot certonly --renew-by-default --register-unsafely-without-email --standalone -d $domain
sleep 3s
else
echo "A" | certbot certonly --renew-by-default --register-unsafely-without-email --standalone -d $domain
sleep 3s
fi
else
echo "Y" | certbot certonly --renew-by-default --register-unsafely-without-email --standalone -d $domain
sleep 3s
fi
}
mkdir -p /home/vps/public_html
wget -q -O /etc/nginx/conf.d/vps.conf "https://raw.githubusercontent.com/HereXz/sianjay/main/vps.conf"
sleep 1
wget -q -O xraymode.sh https://raw.githubusercontent.com/HereXz/sianjay/main/xraymode.sh && chmod +x xraymode.sh && ./xraymode.sh
sleep 1
wget -q -O /etc/xray/config.json "https://raw.githubusercontent.com/HereXz/sianjay/main/conf/config.json"
chmod +x /etc/xray/config.json
sleep 1
rm -f /etc/nginx/conf.d/xray.conf
wget -q -O /etc/nginx/conf.d/xray.conf "https://raw.githubusercontent.com/HereXz/sianjay/main/conf/xray.conf"
chmod +x /etc/nginx/conf.d/xray.conf
rm -fr /etc/systemd/system/xray.service.d
rm -fr /etc/systemd/system/xray.service
cat <<EOF> /etc/systemd/system/xray.service
Description=Xray Service
Documentation=https://github.com/xtls
After=network.target nss-lookup.target
[Service]
User=www-data
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/local/bin/xray run -config /etc/xray/config.json
Restart=on-failure
RestartPreventExitStatus=23
LimitNPROC=10000
LimitNOFILE=1000000
[Install]
WantedBy=multi-user.target
EOF
echo -e "[ ${GREEN}ok${NC} ] Enable & Start & Restart & Xray"
systemctl daemon-reload >/dev/null 2>&1
systemctl enable xray >/dev/null 2>&1
systemctl start xray >/dev/null 2>&1
systemctl restart xray >/dev/null 2>&1
echo -e "[ ${GREEN}ok${NC} ] Enable & Start & Restart & Nginx"
systemctl daemon-reload >/dev/null 2>&1
systemctl enable nginx >/dev/null 2>&1
systemctl start nginx >/dev/null 2>&1
systemctl restart nginx >/dev/null 2>&1
echo -e "$yell[SERVICE]$NC Restart All Service"
sleep 1
chown -R www-data:www-data /home/vps/public_html
sleep 1
echo -e "[ ${GREEN}ok${NC} ] Restart & Xray & Nginx"
systemctl daemon-reload >/dev/null 2>&1
systemctl restart xray >/dev/null 2>&1
systemctl restart nginx >/dev/null 2>&1
