# Decrypted by K-fuscator
# Github- https://github.com/KasRoudra/k-fuscator

nsdomain=$(cat /etc/xray/nsdomain)
cd
echo "Port 2222" >> /etc/ssh/sshd_config
echo "Port 2269" >> /etc/ssh/sshd_config
sed -i 's/#AllowTcpForwarding yes/AllowTcpForwarding yes/g' /etc/ssh/sshd_config
service ssh restart
service sshd restart
echo "Install Slowdns"
rm -rf /etc/slowdns
mkdir -m 777 /etc/slowdns
wget -q -O /etc/slowdns/server.key "https://raw.githubusercontent.com/HereXz/sianjay/main/server.key"
wget -q -O /etc/slowdns/server.pub "https://raw.githubusercontent.com/HereXz/sianjay/main/server.pub"
wget -q -O /etc/slowdns/sldns-server "https://raw.githubusercontent.com/HereXz/sianjay/main/sldns-server"
wget -q -O /etc/slowdns/sldns-client "https://raw.githubusercontent.com/HereXz/sianjay/main/sldns-client"
cd
chmod +x /etc/slowdns/server.key
chmod +x /etc/slowdns/server.pub
chmod +x /etc/slowdns/sldns-server
chmod +x /etc/slowdns/sldns-client
cd
cd
cat > /etc/systemd/system/client-sldns.service << END
[Unit]
Description=Client SlowDNS By HideSSH
Documentation=https://hidessh.com
After=network.target nss-lookup.target
[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/etc/slowdns/sldns-client -udp 1.1.1.1:53 --pubkey-file /etc/slowdns/server.pub $nsdomain 127.0.0.1:88
Restart=on-failure
[Install]
WantedBy=multi-user.target
END
cd
cat > /etc/systemd/system/server-sldns.service << END
[Unit]
Description=Server SlowDNS By HideSSH
Documentation=https://hidessh.com
After=network.target nss-lookup.target
[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/etc/slowdns/sldns-server -udp :5300 -privkey-file /etc/slowdns/server.key $nsdomain 127.0.0.1:2222
Restart=on-failure
[Install]
WantedBy=multi-user.target
END
cd
chmod +x /etc/systemd/system/client-sldns.service
chmod +x /etc/systemd/system/server-sldns.service
pkill sldns-server
pkill sldns-client
systemctl daemon-reload
systemctl stop client-sldns
systemctl stop server-sldns
systemctl enable client-sldns
systemctl enable server-sldns
systemctl start client-sldns
systemctl start server-sldns
systemctl restart client-sldns
systemctl restart server-sldns
