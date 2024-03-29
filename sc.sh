# Decrypted by K-fuscator
# Github- https://github.com/KasRoudra/k-fuscator

sysctl -w net.ipv6.conf.all.disable_ipv6=1
sysctl -w net.ipv6.conf.default.disable_ipv6=1
apt install -y bzip2 gzip coreutils screen curl
MYIP=$(curl -sS ipv4.icanhazip.com)
scversi=$(curl -sS https://raw.githubusercontent.com/HereXz/sianjay/main/update/scriptversion | awk '{print $1}')
red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
tyblue='\e[1;36m'
NC='\e[0m'
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green                 ⚡ WELCOME TO SCRIPT PREMIUM ⚡ $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$tyblue           Script ini dibuat oleh ALFIN HIDAYATULLAH $NC"
echo -e "$tyblue                KONTAK REGISTRASI DAN KELUHAN $NC"
echo -e "$tyblue                    WhatsApp: 087749311100 $NC"
echo -e "$tyblue                    Telegram: @Mass_Alfin $NC"
echo -e "$green             SELAMAT MENGGUNAKAN SCRIPT PREMIUM INI $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$yell                  Sebelum Melakukan Instalasi $NC"
echo -e "$yell        Pastikan anda sudah melakukan registrasi IP VPS $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -n 1 -s -r -p "  Press any key to Continue"
clear
CEKEXPIRED () {
today=$(date -d +1day +%Y-%m-%d)
Exp1=$(curl -sS https://raw.githubusercontent.com/HereXz/sianjay/main/registt | grep $MYIP | awk '{print $3}')
if [[ $today < $Exp1 ]]; then
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$tyblue                     STATUS SCRIPT AKTIF $NC"
echo -e "$green        DATA TELAH KAMI KONFIRMASI ⚡ SELAMAT MENGGUNAKAN $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green                ⚡ POWERED BY SCRIPT PREMIUM ⚡ $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -n 1 -s -r -p "  Press any key to Continue"
else
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$red             MASA AKTIF SCRIPT ANDA SUDAH BERAKHIR $NC"
echo -e "$green        SILAHKAN PERBRUI LISENSI ANDA TERLEBIH DAHULU $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$tyblue                       KONTAK REGISTRASI $NC"
echo -e "$tyblue                    WhatsApp: 087749311100 $NC"
echo -e "$tyblue                    Telegram: @Mass_Alfin $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green                ⚡ POWERED BY SCRIPT PREMIUM ⚡ $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -n 1 -s -r -p "  Press any key to Exit"
rm -f /root/sc
clear
exit 0
fi
}
IZIN=$(curl -sS https://raw.githubusercontent.com/HereXz/sianjay/main/registt | awk '{print $4}' | grep $MYIP)
if [[ $MYIP = $IZIN ]]; then
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green                    ⚡ INFORMASI SCRIPT ⚡ $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$tyblue                   PERIZINAN TELAH DISETUJUI $NC"
echo -e "$green          SCRIPT SUDAH SIAP UNTUK DIINSTAL DI VPS ANDA $NC"
CEKEXPIRED
else
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green                    ⚡ INFORMASI SCRIPT ⚡ $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$red                      PERIZINAN DITOLAK $NC"
echo -e "$tyblue              SCRIPT BELUM BISA INSTAL DI VPS ANDA $NC"
echo -e "$green          SILAHKAN LAKUKAN REGISTRASI TERLEBIH DAHULU $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$tyblue                       KONTAK REGISTRASI $NC"
echo -e "$tyblue                    WhatsApp: 087749311100 $NC"
echo -e "$tyblue                    Telegram: @Mass_Alfin $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green                ⚡ POWERED BY SCRIPT PREMIUM ⚡ $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -n 1 -s -r -p "  Press any key to Exit"
rm -f /root/sc
clear
exit 0
fi
clear
localip=$(hostname -I | cut -d\  -f1)
hst=( `hostname` )
dart=$(cat /etc/hosts | grep -w `hostname` | awk '{print $2}')
if [[ "$hst" != "$dart" ]]; then
echo "$localip $(hostname)" >> /etc/hosts
fi
if [ -f "/root/log-install.txt" ]; then
rm -fr /root/log-install.txt
fi
mkdir -p /etc/xray
mkdir -p /etc/v2ray
touch /etc/xray/domain
touch /etc/v2ray/domain
touch /etc/xray/scdomain
touch /etc/v2ray/scdomain
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
sysctl -w net.ipv6.conf.all.disable_ipv6=1 >/dev/null 2>&1
sysctl -w net.ipv6.conf.default.disable_ipv6=1 >/dev/null 2>&1
apt install git curl -y >/dev/null 2>&1
apt install python -y >/dev/null 2>&1
mkdir -p /var/lib/alf-prem >/dev/null 2>&1
echo "IP=" >> /var/lib/alf-prem/ipvps.conf
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green       ⚡ SEDANG MENGINSTAL PERALATAN YANG DIBUTUHKAN ⚡ $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 3
wget -q https://github.com/takbebeh/Premium/raw/main/tools.sh;chmod +x tools.sh;./tools.sh
rm tools.sh
clear
clear
echo -e "\e[1;32m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m"
echo -e "             ⚡ Please select a domain type below ⚡"
echo -e "\e[1;32m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m"
echo -e "      \e[1;32m(1)\e[0m Gunakan Subdomain Pribadi"
echo -e "      \e[1;32m(2)\e[0m Gunakan Subdomain Otomatis"
echo -e "\e[1;32m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m"
read -p "   Silahkan Pilih Nomor 1 atau 2 : " host
echo ""
if [[ $host == "1" ]]; then
echo -e "   \e[1;32mSilahkan masukkan Subdomain Anda "
read -p "   Subdomain: " pp
echo "$pp" > /root/scdomain
echo "$pp" > /etc/xray/scdomain
echo "$pp" > /etc/xray/domain
echo "$pp" > /etc/v2ray/domain
echo "$pp" > /root/domain
echo "IP=$pp" > /var/lib/alf-prem/ipvps.conf
echo ""
elif [[ $host == "2" ]]; then
wget https://raw.githubusercontent.com/HereXz/sianjay/main/cfdomain.sh && chmod +x cfdomain.sh && ./cfdomain.sh
rm -f /root/cfdomain.sh
clear
else
echo -e "Random Subdomain/Domain is used"
wget https://raw.githubusercontent.com/HereXz/sianjay/main/cfdomain.sh && chmod +x cfdomain.sh && ./cfdomain.sh
rm -f /root/cfdomain.sh
clear
fi
clear
wget https://raw.githubusercontent.com/HereXz/sianjay/main/cfslow.sh && chmod +x cfslow.sh && ./cfslow.sh
rm -f /root/cfslow.sh
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green             ⚡ SEDANG MENGINSTAL SSH & NGINX SSL ⚡               $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 3
clear
wget https://raw.githubusercontent.com/HereXz/sianjay/main/ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh
sleep 2
clear
wget https://raw.githubusercontent.com/HereXz/sianjay/main/nginx-ssl.sh && chmod +x nginx-ssl.sh && ./nginx-ssl.sh
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green                ⚡ SEDANG MENGINSTAL WEBSOCKET ⚡               $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 3
clear
wget https://raw.githubusercontent.com/HereXz/sianjay/main/insshws.sh && chmod +x insshws.sh && ./insshws.sh
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green        ⚡ SEDANG MENGKONFIGURASI AUTO DELETE AKUN EXP ⚡               $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 3
clear
cd /usr/bin
wget -O xp "https://raw.githubusercontent.com/HereXz/sianjay/main/xp.sh"
chmod +x xp
sleep 1
wget -q -O /usr/bin/notramcpu "https://raw.githubusercontent.com/HereXz/sianjay/main/notramcpu" && chmod +x /usr/bin/notramcpu
cd
rm -f /root/ins-xray.sh
rm -f /root/insshws.sh
rm -f /root/xraymode.sh
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green              ⚡ SEDANG MENGINSTAL XRAY TUNNEL ⚡               $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 3
clear
wget -q -O ins-xray.sh https://raw.githubusercontent.com/HereXz/sianjay/main/ins-xray.sh && chmod +x ins-xray.sh && ./ins-xray.sh
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green          ⚡ SEDANG MENGKONFIGURASI TAMPILAN MENU ⚡               $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 3
wget -q -O senmenu.sh https://raw.githubusercontent.com/HereXz/sianjay/main/senmenu.sh && chmod +x senmenu.sh && ./senmenu.sh
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green                ⚡ SEDANG MENGINSTAL SLOWDNS ⚡               $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 3
wget -q -O slow.sh https://raw.githubusercontent.com/HereXz/sianjay/main/slow.sh && chmod +x slow.sh && ./slow.sh
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green       ⚡ SEDANG MENGKONFIGURASI FILE YANG DIBUTUHKAN ⚡               $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 3
mkdir /root/akun
mkdir /root/akun/vmess
mkdir /root/akun/vless
mkdir /root/akun/shadowsocks
mkdir /root/akun/trojan
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$green       ⚡ SEDANG MENGKONFIGURASI AUTO PENYEGARAN VPS ⚡               $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 3
echo "0 5 * * * root reboot" >> /etc/crontab
echo "* * * * * root clog" >> /etc/crontab
echo "59 * * * * root pkill 'menu'" >> /etc/crontab
echo "0 1 * * * root xp" >> /etc/crontab
echo "*/5 * * * * root notramcpu" >> /etc/crontab
service cron restart
clear
org=$(curl -s https://ipapi.co/org )
echo "$org" > /root/.isp
cat> /root/.profile << END
if [ "$BASH" ]; then
if [ -f ~/.bashrc ]; then
. ~/.bashrc
fi
fi
mesg n || true
clear
menu
END
chmod 644 /root/.profile
if [ -f "/root/log-install.txt" ]; then
rm -fr /root/log-install.txt
fi
cd
echo "$scversi" > /root/version
clear
rm -f ins-xray.sh
rm -f senmenu.sh
rm -f sc
rm -f xraymode.sh
rm -f slow.sh
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"  | tee -a log-install.txt
echo "                  ⚡ INFORMASI SCRIPT PREMIUM ⚡"  | tee -a log-install.txt
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                 : 22, 53, 2222, 2269"  | tee -a log-install.txt
echo "   - SSH Websocket           : 80" | tee -a log-install.txt
echo "   - SSH SSL Websocket       : 443" | tee -a log-install.txt
echo "   - Stunnel4                : 222, 777" | tee -a log-install.txt
echo "   - Dropbear                : 109, 143" | tee -a log-install.txt
echo "   - Badvpn                  : 7100-7300" | tee -a log-install.txt
echo "   - Nginx                   : 81" | tee -a log-install.txt
echo "   - XRAY  Vmess TLS         : 443" | tee -a log-install.txt
echo "   - XRAY  Vmess None TLS    : 80" | tee -a log-install.txt
echo "   - XRAY  Vless TLS         : 443" | tee -a log-install.txt
echo "   - XRAY  Vless None TLS    : 80" | tee -a log-install.txt
echo "   - Trojan GRPC             : 443" | tee -a log-install.txt
echo "   - Trojan WS               : 443" | tee -a log-install.txt
echo "   - Trojan GO               : 443" | tee -a log-install.txt
echo "   - Sodosok WS/GRPC         : 443" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - AutoKill Multi Login User" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Fully automatic script" | tee -a log-install.txt
echo "   - VPS settings" | tee -a log-install.txt
echo "   - Admin Control" | tee -a log-install.txt
echo "   - Change port" | tee -a log-install.txt
echo "   - Restore Data" | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"  | tee -a log-install.txt
echo "          ⚡ Terima Kasih Telah Menggunakan Script Ini ⚡"  | tee -a log-install.txt
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"  | tee -a log-install.txt
sleep 1
echo -ne "[ ${yell}WARNING${NC} ] Do you want to reboot now ? (y/n)? "
read answer
if [ "$answer" == "${answer#[Yy]}" ] ;then
exit 0
else
reboot
fi
