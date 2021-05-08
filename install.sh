sudo apt update -y
sudo apt upgrade -y
sudo apt install jq -y
wget https://github.com/ethersphere/bee/releases/download/v0.5.3/bee_0.5.3_amd64.deb
wget https://github.com/ethersphere/bee-clef/releases/download/v0.4.10/bee-clef_0.4.10_amd64.deb
sudo dpkg -i bee-clef_0.4.10_amd64.deb
sudo dpkg -i bee_0.5.3_amd64.deb
sudo bee-get-addr > addr.txt
sudo nano /etc/bee/bee.yaml
chown -R bee:bee /var/lib/bee
sudo systemctl start bee
sudo journalctl -u bee -f
