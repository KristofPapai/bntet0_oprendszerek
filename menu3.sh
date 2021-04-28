#!/bin/bash
curl "https://api.spacexdata.com/v4/crew" |jq -r .[].name > name.txt
curl "https://api.spacexdata.com/v4/crew" |jq -r .[].agency > agency.txt
curl "https://api.spacexdata.com/v4/crew" |jq -r .[].status > status.txt

paste name.txt agency.txt status.txt > astronaut.txt

clear

sed -i '1i\----------	----------	----------' astronaut.txt
sed -i '1i\Asztronauta neve	Ügynökége	Státusza' astronaut.txt


cat astronaut.txt | column -t -s$'\t'

read input1
bash bntet0.sh

rm name.txt
rm agency.txt
rm status.txt
rm astronaut.txt
