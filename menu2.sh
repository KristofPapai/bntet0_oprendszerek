#!/bin/bash
curl "https://api.spacexdata.com/v4/launches/past" |jq -r .[].date_utc  > date.txt

