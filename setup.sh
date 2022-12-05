#!/bin/bash

mkdir Windows
cd Windows
mkdir Desktop Documents Downloads Pictures Videos Music

for i in 1 2 3 4 5
do
  mkdir mapa$i
done

while read line; do    
    echo $line    
done < user.txt
