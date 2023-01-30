#!/bin/bash

TXT=`sudo ifconfig`
echo "$TXT" > output.txt


IP=`sed -n 11p output.txt | cut -c 14-28 |  sed 's/^ *//g'`
echo
echo "##################################"
echo
echo "Your IP address is : $IP"
echo
echo "##################################"
echo
