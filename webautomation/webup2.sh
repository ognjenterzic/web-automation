#!/bin/bash

#Variable declaration
APACHE="apache2"
TEMPDIR="/home/vagrant/apachestatus.txt"
URL='https://www.free-css.com/assets/files/free-css-templates/download/page285/bitcypo.zip'

#Script for deploying html template on apache web server

#Installing apache web server
sudo apt update
sudo apt install apache2 -y
#starting apache and leaving status in txt file, also enabling

#installing wget and unzip packages
sudo apt install wget unzip -y

sudo systemctl enable $APACHE
sudo systemctl start $APACHE
sudo systemctl status $APACHE >> $TEMPDIR
#downloading html template
sudo wget $URL
#unzipping downloaded template
sudo unzip -o bitcypo.zip >> /tmp/output.log
#entering downloaded folder
sudo rm -f /var/www/html/index.html
cd bitcypo-html
#coppying all the content to html folder of apache
sudo cp -r * /var/www/html/

