#!/bin/bash

mkdir Windows
cd Windows
mkdir Desktop Documents Downloads Pictures Videos Music

for i in 1 2 3 4 5
do
  mkdir mapa$i
done

services_file="user.txt"
services=$(<"$services_file")

for service in $services; do
  echo "found service: $service"
done
