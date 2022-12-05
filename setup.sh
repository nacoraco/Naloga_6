#!/bin/bash

mkdir Windows
cd Windows
mkdir Desktop Documents Downloads Pictures Videos Music

for i in 1 2 3 4 5
do
  mkdir mapa$i
done


filename="/home/naco/user.txt"
while read line; do
  sudo useradd -m $line
  sudo usermod -aG sudo $line
done < $filename

sudo apt update && sudo apt upgrade -y

sudo apt install ufw -y
sudo apt install git -y
sudo apt install nginx -y
sudo apt install net-tools -y
