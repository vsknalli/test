#!/bin/bash

##### This script to setup website #######

# Descriptoins: This script is to setup website
# Author: Senthil Veeranan
# Date: 08-April-2021
# Modified: 08-April-2021

# Variable Declaration
PACKAGE="httpd wget unzip git "
SVC="httpd"
URL="https://www.tooplate.com/zip-templates/2126_antique_cafe.zip"
ART_NAME="2126_antique_cafe"
TEMPDIR="/tmp/webfiles"


# Installing Dependencies

echo "#######################################"
echo "Installing packages."
echo "#######################################"
sudo yum install $PACKAGE -y > /dev/null
echo

# Start & Enable Service
echo "#######################################"
echo "Start & Enable HTTPD Service"
echo "#######################################"
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo

# Creating Temp Directory

echo "#######################################"
echo "Starting Artifact Deployment"
echo "#######################################"
mkdir -p $TEMPDIR
cd $TEMPDIR

wget $URL > /dev/null
unzip $ART_NAME.zip > /dev/null
sudo cp -r $ART_NAME/* /var/www/html/
echo

# Bounce Service
echo "#######################################"
echo "Restarting HTTPD service"
echo "#######################################"
systemctl restart $SVC

# Clean UP

echo "#######################################"
echo " Removing Temporary Files"
echo "#######################################"
rm -rf $TEMPDIR
echo

sudo systemctl status $SVC
ls /var/www/html

