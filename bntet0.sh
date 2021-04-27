#!/bin/bash
echo "A SpaceX API program"
echo "Készitette: Pápai Kristóf Levente - BNTET0"
# curl "https://api.spacexdata.com/v4/capsules"
echo "------------------------------------------"
echo "Menü:"
echo "1. SpaceX űrhajók"
echo "2. SpaceX Kilövések"
echo "3. SpaceX legényég"
echo "Kérem írja be a menüpont számát amelyiket ki szeretné listázni."
read input1

if [[ "$input1" == 1 ]]; then
echo "1.es menü lett kiválasztva"
bash menu1.sh
elif [[ "$input1" == 2 ]]; then
echo "2.es menü lett kiválasztva"
bash menu2.sh
elif [[ "$input1" == 3 ]]; then
echo "3.as menü lett kiválasztva"
else
echo "helytelen bevitel"
fi
