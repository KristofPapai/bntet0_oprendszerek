#!/bin/bash
curl "https://api.spacexdata.com/v4/history" |jq -r .[].title > title.txt
curl "https://api.spacexdata.com/v4/history" |jq -r .[].event_date_utc > date.txt
curl "https://api.spacexdata.com/v4/history" |jq -r .[].details > details.txt

paste title.txt date.txt > history.txt

clear
sed -i '1i\----------		----------' history.txt

sed -i '1i\Esemény	Esemény időpontja' history.txt

cat history.txt | column -t -s$'\t'
read input2
bash bntet0.sh

rm title.txt
rm date.txt
rm details.txt
rm history.txt
