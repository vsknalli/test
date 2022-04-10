#!/bin/bash
echo
# Author: Senthil Veeranan
# Purpose: To build webserver
# Date: 10-April-2022

echo " ###############################################"
echo Installing packages.
echo " ###############################################"
sudo yum install wget unzip httpd -y > /dev/null 

# Start & Enable Service
echo " ###############################################"
echo "Start and enable HTTPD Service" 
echo " ###############################################"
sudo systemctl start httpd
sudo systemctl enable httpd
echo 

# Creating Tem Directory
echo " ###############################################"
echo "Starting Artifact Deployment" 
echo " ###############################################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo 

wget https://www.tooplate.com/zip-templates/2092_shelf.zip > /dev/null  
unzip 2092_shelf.zip
sudo cp -r 2092_shelf/* /var/www/html
echo 

# Bounce the service 
echo " ###############################################"
echo "Restarting HTTPD service"
echo " ###############################################"
sudo systemctl restart httpd 
echo 

# CleanUp
echo " ###############################################"
echo "Removing Temporary Files" 
echo " ###############################################"
rm -rf /tmp/webfiles

# verify the service status of HTTPD
echo " ###############################################"
echo "Verifying the httpd service status"
echo " ###############################################"
sudo systemctl status httpd
sudo ls -ial /var/www/html



