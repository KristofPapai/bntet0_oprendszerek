#!/bin/bash
curl "https://api.spacexdata.com/v4/capsules" |jq -r .[].serial  > capsules.txt

echo "Menü:"
echo "-----------------------------------"
echo "1. SpaceX kapszulák"
echo "2. SpaceX Boosterek"
read input2


if [[ "$input2" == 1 ]]; then
clear
filename='capsules.txt'
n=1
while read line; do
echo "$n. serial $line"
n=$((n+1))
done < $filename


else
echo "valami más"
fi
