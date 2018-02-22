#!/bin/bash
liste=$(cat /home/iutcb/Bureau/users.txt)
for i in $liste
do
a1=$(echo $i | awk -F: '{print $1}')
useradd $a1
a2=$(echo $i | awk -F: '{print $2}')
echo -e "$a2\n$a2" | passwd $a1
a3=$(echo $i | awk -F: '{print $3}')
addgroup $a1 $a3
echo "L'utilisateur "$a1" faisant parti du groupe "$a3" a comme mot de passe "$a2
done
