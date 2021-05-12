#!/bin/bash

curl "https://api.spacexdata.com/v4/capsules" |jq -r .[].type  > type.txt
curl "https://api.spacexdata.com/v4/capsules" |jq -r .[].serial  > serial.txt
curl "https://api.spacexdata.com/v4/capsules" |jq -r .[].reuse_count  > reuse.txt
curl "https://api.spacexdata.com/v4/capsules" |jq -r .[].last_update  > update.txt
curl "https://api.spacexdata.com/v4/capsules" |jq -r .[].status  > status.txt

clear
paste type.txt serial.txt reuse.txt status.txt update.txt > kapsz.txt
sed -i '1i\----------	----------	----------	----------	----------' kapsz.txt
sed -i '1i\Típus	Széria szám	használatok száma	státusz		utolsó fejlemény' kapsz.txt
cat kapsz.txt | column -t -s$'\t'
rm kapsz.txt
rm type.txt
rm serial.txt
rm reuse.txt
rm status.txt
rm update.txt
