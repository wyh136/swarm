sudo apt update -y
sudo apt upgrade -y
sudo apt install jq -y
wget https://github.com/ethersphere/bee/releases/download/v0.6.0/bee_0.6.0_amd64.deb
wget https://github.com/ethersphere/bee-clef/releases/download/v0.4.12/bee-clef_0.4.12_amd64.deb
sudo dpkg -i bee-clef_0.4.12_amd64.deb
sudo dpkg -i bee_0.6.0_amd64.deb
sudo bee-get-addr > addr.txt
wget https://raw.githubusercontent.com/wyh136/swarm/main/bee.yaml -O /etc/bee/bee.yaml
sudo systemctl restart bee
chown -R bee:bee /var/lib/bee
sudo journalctl -u bee -f
