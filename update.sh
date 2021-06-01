#!/bin/sh
rm update.sh
sudo apt update -y 
sudo apt upgrade -y
sudo systemctl stop bee
sudo cp -r /var/lib/bee/keys ~/keys_backup
wget https://github.com/ethersphere/bee/releases/download/v0.6.2/bee_0.6.2_amd64.deb
wget https://github.com/ethersphere/bee-clef/releases/download/v0.4.12/bee-clef_0.4.12_amd64.deb
sudo dpkg -i bee-clef_0.4.12_amd64.deb
sudo dpkg -i bee_0.6.2_amd64.deb
sudo systemctl start bee
sudo journalctl -u bee -f
