#!/bin/bash
clear
echo "Menü:"
echo "-----------------------------------"
echo "1. SpaceX kapszulák"
echo "2. SpaceX Boosterek"
read input2


if [[ "$input2" == 1 ]]; then
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

read input3
bash bntet0.sh
elif [[ "$input2" == 2 ]]; then
curl "https://api.spacexdata.com/v4/cores" |jq -r .[].serial  > serialB.txt
curl "https://api.spacexdata.com/v4/cores" |jq -r .[].block  > block.txt
curl "https://api.spacexdata.com/v4/cores" |jq -r .[].reuse_count  > reuseB.txt
curl "https://api.spacexdata.com/v4/cores" |jq -r .[].status  > statusB.txt
curl "https://api.spacexdata.com/v4/cores" |jq -r .[].last_update  > updateB.txt

clear
paste serialB.txt block.txt reuseB.txt statusB.txt updateB.txt > falc.txt
sed -i '1i\----------		----------		----------	----------	----------' falc.txt
sed -i '1i\Falcon sorozatzám	Block	használatok száma	státusz		utolsó fejlemény' falc.txt
cat falc.txt | column -t -s$'\t'
rm falc.txt
rm serialB.txt
rm block.txt
rm reuseB.txt
rm statusB.txt
rm updateB.txt

read input3
bash bntet0.sh
else
echo "valami más"
bash bntet0.sh
fi
