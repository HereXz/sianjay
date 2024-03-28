# Decrypted by K-fuscator
# Github- https://github.com/KasRoudra/k-fuscator

apt install jq curl -y
DOMAIN=alfvpn.my.id
DAOMIN=$(cat /etc/xray/domain)
sub=$(</dev/urandom tr -dc a-z0-9 | head -c4)
SUB_DOMAIN=${sub}.alfvpn.my.id
NS_DOMAIN=ns.${SUB_DOMAIN}
CF_ID=alfinproject22@gmail.com
CF_KEY=308669925540112f4ebfe134ad402adc11875
set -euo pipefail
IP=$(wget -qO- icanhazip.com);
echo "Updating DNS NS for ${SUB_DOMAIN}..."
ZONE=$(curl -sLX GET "https://api.cloudflare.com/client/v4/zones?name=${DOMAIN}&status=active" \
-H "X-Auth-Email: ${CF_ID}" \
-H "X-Auth-Key: ${CF_KEY}" \
-H "Content-Type: application/json" | jq -r .result[0].id)
RECORD=$(curl -sLX GET "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records?name=${NS_DOMAIN}" \
-H "X-Auth-Email: ${CF_ID}" \
-H "X-Auth-Key: ${CF_KEY}" \
-H "Content-Type: application/json" | jq -r .result[0].id)
if [[ "${#RECORD}" -le 10 ]]; then
RECORD=$(curl -sLX POST "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records" \
-H "X-Auth-Email: ${CF_ID}" \
-H "X-Auth-Key: ${CF_KEY}" \
-H "Content-Type: application/json" \
--data '{"type":"NS","name":"'${NS_DOMAIN}'","content":"'${DAOMIN}'","proxied":false}' | jq -r .result.id)
fi
RESULT=$(curl -sLX PUT "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records/${RECORD}" \
-H "X-Auth-Email: ${CF_ID}" \
-H "X-Auth-Key: ${CF_KEY}" \
-H "Content-Type: application/json" \
--data '{"type":"NS","name":"'${NS_DOMAIN}'","content":"'${DAOMIN}'","proxied":false}')
echo "$NS_DOMAIN" > /etc/xray/nsdomain
echo "$NS_DOMAIN" > /root/nsdomain
echo "NS Subdomain kamu adalah : $NS_DOMAIN"
sleep 4
rm -f /root/cfslow.sh
