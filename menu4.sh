#!/bin/bash

curl "https://api.spacexdata.com/v4/rockets" |jq -r .[].name > name.txt
curl "https://api.spacexdata.com/v4/rockets" |jq -r .[].company > company.txt
curl "https://api.spacexdata.com/v4/rockets" |jq -r .[].country > country.txt
curl "https://api.spacexdata.com/v4/rockets" |jq -r .[].cost_per_launch > cost.txt
curl "https://api.spacexdata.com/v4/rockets" |jq -r .[].stages > stages.txt
curl "https://api.spacexdata.com/v4/rockets" |jq -r .[].first_flight > first.txt

paste name.txt company.txt country.txt cost.txt stages.txt first.txt > rockets.txt

clear

sed -i '1i\----------	----------	----------	----------	----------	----------' rockets.txt
sed -i '1i\Rakéta neve	Cég	Ország	Költség kilövésenként(USD)	Stages	Első fellövés' rockets.txt


cat rockets.txt | column -t -s$'\t'


rm name.txt
rm company.txt
rm country.txt
rm cost.txt
rm stages.txt
rm first.txt
rm rockets.txt
