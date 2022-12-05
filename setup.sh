#!/bin/bash

mkdir Windows
cd Windows
mkdir Desktop Documents Downloads Pictures Videos Music

for i in 1 2 3 4 5
do
  mkdir mapa$i
done

sudo wget https://raw.githubusercontent.com/nacoraco/Naloga_6/main/user.txt

filename="$HOME/user.txt"
while read line; do
  sudo useradd -m $line
  sudo usermod -aG sudo $line
done < $filename

sudo apt update && sudo apt upgrade -y

sudo apt install ufw -y
sudo apt install git -y
sudo apt install nginx -y
sudo apt install net-tools -y

sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
