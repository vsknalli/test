#!/bin/bash

##### This script to dismantle the website setup for testing #######

# Descriptoins: This script is to dismantle the setup website
# Author: Senthil Veeranan
# Date: 08-April-2021
# Modified: 08-April-2021

sudo systemctl stop httpd 
sudo rm -rf /var/www/html/*
sudo yum remove httpd wget git unzip -y 
