#!/bin/bash

##### This script to setup website #######

# Descriptoins: This script is to setup website
# Author: Senthil Veeranan
# Date: 08-April-2021
# Modified: 08-April-2021


# Installing Dependencies

echo "#######################################"
echo "Installing packages."
echo "#######################################"
sudo yum install wget unzip httpd -y > /dev/null
echo 

# Start & Enable Service 
echo "#######################################"
echo "Start & Enable HTTPD Service"
echo "#######################################"
sudo systemctl start httpd
sudo systemctl enable httpd
echo 

# Creating Temp Directory

echo "#######################################"
echo "Starting Artifact Deployment"
echo "#######################################"
mkdir -p /tmp/webfiles

cd /tmp/webfiles

wget https://www.tooplate.com/zip-templates/2126_antique_cafe.zip > /dev/null 
unzip 2126_antique_cafe.zip > /dev/null 
sudo cp -r 2126_antique_cafe/* /var/www/html/
echo 

# Bounce Service 
echo "#######################################"
echo "Restarting HTTPD service"
echo "#######################################"
systemctl restart httpd

# Clean UP

echo "#######################################"
echo " Removing Temporary Files"
echo "#######################################"
rm -rf /tmp/webfiles
echo 

sudo systemctl status httpd 
ls /var/www/html 
