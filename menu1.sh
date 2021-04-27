#!/bin/bash
curl "https://api.spacexdata.com/v4/capsules" |jq -r .[].type  > type.txt
curl "https://api.spacexdata.com/v4/capsules" |jq -r .[].serial  > serial.txt
curl "https://api.spacexdata.com/v4/capsules" |jq -r .[].reuse_count  > reuse.txt
curl "https://api.spacexdata.com/v4/capsules" |jq -r .[].last_update  > update.txt
curl "https://api.spacexdata.com/v4/capsules" |jq -r .[].status  > status.txt

curl "https://api.spacexdata.com/v4/cores" |jq -r .[].serial  > serialB.txt
curl "https://api.spacexdata.com/v4/cores" |jq -r .[].block  > block.txt
curl "https://api.spacexdata.com/v4/cores" |jq -r .[].reuse_count  > reuseB.txt
curl "https://api.spacexdata.com/v4/cores" |jq -r .[].status  > statusB.txt
curl "https://api.spacexdata.com/v4/cores" |jq -r .[].last_update  > updateB.txt


echo "Menü:"
echo "-----------------------------------"
echo "1. SpaceX kapszulák"
echo "2. SpaceX Boosterek"
read input2


if [[ "$input2" == 1 ]]; then
paste type.txt serial.txt reuse.txt status.txt update.txt > kapsz.txt
echo "Típus	széria szám	használatok száma	státusz		utolsó fejlemény"
cat kapsz.txt

elif [[ "input2" == 2 ]]; then
paste serialB.txt block.txt reuseB.txt statusB.txt updateB.txt > falc.txt
echo "Falcon sorozatszám     Block     használatok száma       státusz         utolsó fejlemény"
cat falc.txt

else
echo "valami más"
fi
