#!/bin/bash

mkdir Windows
cd Windows
mkdir Desktop Documents Downloads Pictures Videos Music

for i in 1 2 3 4 5
do
  mkdir mapa$i
done

while read p do 
echo $p
done <  user.txt
