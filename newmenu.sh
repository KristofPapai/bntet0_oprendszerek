#!/bin/bash

while getopts ":hkbtlr" opt;do
case ${opt} in
h ) 
bash bntet0.sh
;;
k )
bash menu1_1.sh
;;
b )
bash menu1_2.sh
;;
t )
bash menu2.sh
;;
l )
bash menu3.sh
;;
r )
bash menu4.sh
;;
\? )
echo "Használat: newmenu.sh [-h] [-k] [-b] [-t] [-l] [-r]"
;;
esac
done
