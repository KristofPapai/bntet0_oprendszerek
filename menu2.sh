#!/bin/bash
curl "https://api.spacexdata.com/v4/history" |jq -r .[].title > title.txt
curl "https://api.spacexdata.com/v4/history" |jq -r .[].event_date_utc > date.txt
curl "https://api.spacexdata.com/v4/history" |jq -r .[].details > details.txt

paste title.txt date.txt > history.txt

echo "---------------------------------------------"
echo "Esemény///Esemény időpontja"
echo "---------------------------------------------"
cat history.txt

rm title.txt
rm date.txt
rm details.txt
rm history.txt
