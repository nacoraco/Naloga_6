#!/bin/bash

mkdir Windows
cd Windows
mkdir Desktop Documents Downloads Pictures Videos Music

for i in 1 2 3 4 5
do
  mkdir mapa$i
done

echo -n "Enter name of text file: "; read FILENAME
while read USER; do
   echo "$USER"
  sudo  useradd -m "${USER}" -d /users/"${USER}"
   sudo  usermod -aG sudo -m "${USER}"
done < "${FILENAME}"
