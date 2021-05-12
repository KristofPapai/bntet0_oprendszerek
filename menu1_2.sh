#!/bin/bash
curl "https://api.spacexdata.com/v4/cores" |jq -r .[].serial  > serialB.txt
curl "https://api.spacexdata.com/v4/cores" |jq -r .[].block  > block.txt
curl "https://api.spacexdata.com/v4/cores" |jq -r .[].reuse_count  > reuseB.txt
curl "https://api.spacexdata.com/v4/cores" |jq -r .[].status  > statusB.txt
curl "https://api.spacexdata.com/v4/cores" |jq -r .[].last_update  > updateB.txt

clear
paste serialB.txt block.txt reuseB.txt statusB.txt updateB.txt > falc.txt
sed -i '1i\----------	----------	----------	----------	----------' falc.txt
sed -i '1i\Falcon sorozatzám	Block	használatok száma	státusz		utolsó fejlemény' falc.txt
cat falc.txt | column -t -s$'\t'
rm falc.txt
rm serialB.txt
rm block.txt
rm reuseB.txt
rm statusB.txt
rm updateB.txt

