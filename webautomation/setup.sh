#!/bin/bash

for host in `cat remhosts`;
do
 DISTRO=`ssh devops@$host cat /etc/os-release | sed -n 1p`
 
 if [[ $DISTRO == *"CentOS Linux"*  ]];
 then
  echo "CentOS Distro" 
  ssh devops@$host "bash -s" < './webup.sh'
  else
  echo "Ubuntu Distro"
  ssh devops@$host "bash -s" < './webup2.sh'
 fi 
done
