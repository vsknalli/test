#!/bin/bash
echo
# Author: Senthil Veeranan
# Purpose: To build webserver
# Date: 10-April-2022
PACKAGE="httpd wget unzip"
SVC="httpd"
URL='https://www.tooplate.com/zip-templates/2092_shelf.zip'
ART_NAME='2092_shelf'
TEMPDIR="/tmp/webfiles"
echo 
echo " ###############################################"
echo Installing packages.
echo " ###############################################"
sudo yum install $PACKAGE -y > /dev/null 

# Start & Enable Service
echo " ###############################################"
echo "Start and enable HTTPD Service" 
echo " ###############################################"
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo 

# Creating Tem Directory
echo " ###############################################"
echo "Starting Artifact Deployment" 
echo " ###############################################"
mkdir -p $ART_NAME
cd $ART_NAME
echo 

wget $URL > /dev/null  
unzip $URL.zip
sudo cp -r ART_NAME/* /var/www/html
echo 

# Bounce the service 
echo " ###############################################"
echo "Restarting HTTPD service"
echo " ###############################################"
sudo systemctl restart $SVC
echo 

# CleanUp
echo " ###############################################"
echo "Removing Temporary Files" 
echo " ###############################################"
rm -rf $TEMPDIR

# verify the service status of HTTPD
echo " ###############################################"
echo "Verifying the httpd service status"
echo " ###############################################"
sudo systemctl status $SVC
sudo ls -ial /var/www/html



