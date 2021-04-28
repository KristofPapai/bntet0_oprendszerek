#!/bin/bash
clear
echo "A SpaceX API program"
echo "Készitette: Pápai Kristóf Levente - BNTET0"
# curl "https://api.spacexdata.com/v4/capsules"
echo "------------------------------------------"
echo "Menü:"
echo "------------------------------"
echo "1. SpaceX űrhajók"
echo "2. SpaceX történelmi események"
echo "3. SpaceX legényég"
echo "4. SpaceX Rakéták"
echo "0. kilépés"
echo "------------------------------------------"
echo "Kérem írja be a menüpont számát amelyiket ki szeretné listázni."
read input1

if [[ "$input1" == 1 ]]; then
echo "1.es menü lett kiválasztva"
bash menu1.sh
elif [[ "$input1" == 2 ]]; then
echo "2-es menü lett kiválasztva"
bash menu2.sh
elif [[ "$input1" == 3 ]]; then
echo "3-as menü lett kiválasztva"
bash menu3.sh
elif [[ "$input1" == 4 ]]; then
echo "4-es menü lett kiválasztva"
elif [[ "$input1" == 0 ]]; then
clear
else
echo "helytelen bevitel"
fi
