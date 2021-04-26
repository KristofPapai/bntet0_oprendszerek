#!/bin/bash
curl "https://api.spacexdata.com/v4/capsules" |jq -r .[].type  > type.txt
curl "https://api.spacexdata.com/v4/capsules" |jq -r .[].serial  > capsules.txt
curl "https://api.spacexdata.com/v4/capsules" |jq -r .[].reuse_count  > reuse.txt
curl "https://api.spacexdata.com/v4/capsules" |jq -r .[].last_update  > update.txt
curl "https://api.spacexdata.com/v4/capsules" |jq -r .[].status  > status.txt



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
