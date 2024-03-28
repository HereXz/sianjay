# Decrypted by K-fuscator
# Github- https://github.com/KasRoudra/k-fuscator

cd
apt install python -y
wget -O /usr/local/bin/ws-openssh https://raw.githubusercontent.com/HereXz/sianjay/main/insshws/openssh-socket.py.txt
wget -O /usr/local/bin/ws-dropbear https://raw.githubusercontent.com/HereXz/sianjay/main/insshws/dropbear-ws.py.txt
wget -O /usr/local/bin/ws-stunnel https://raw.githubusercontent.com/HereXz/sianjay/main/insshws/ws-stunnel.txt
chmod +x /usr/local/bin/ws-openssh
chmod +x /usr/local/bin/ws-dropbear
chmod +x /usr/local/bin/ws-stunnel
wget -O /etc/systemd/system/ws-openssh.service https://raw.githubusercontent.com/HereXz/sianjay/main/insshws/service-wsopenssh.txt && chmod +x /etc/systemd/system/ws-openssh.service
wget -O /etc/systemd/system/ws-dropbear.service https://raw.githubusercontent.com/HereXz/sianjay/main/insshws/service-wsdropbear.txt && chmod +x /etc/systemd/system/ws-dropbear.service
wget -O /etc/systemd/system/ws-stunnel.service https://raw.githubusercontent.com/HereXz/sianjay/main/insshws/ws-stunnel.service.txt && chmod +x /etc/systemd/system/ws-stunnel.service
systemctl daemon-reload
systemctl enable ws-openssh.service
systemctl start ws-openssh.service
systemctl restart ws-openssh.service
systemctl enable ws-dropbear.service
systemctl start ws-dropbear.service
systemctl restart ws-dropbear.service
systemctl enable ws-stunnel.service
systemctl start ws-stunnel.service
systemctl restart ws-stunnel.service
