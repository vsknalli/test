#!/bin/bash
echo
# Author: Senthil Veeranan
# Purpose: To build webserver
# Date: 10-April-2022

echo "Welcome $USER on $HOSTNAME."
echo "############################################"

ROOTFREE=$(df -h | grep '/dev/sda1' | awk '{print $4}')
LOAD=`uptime | awk '{print $9}'`
FREERAM=$(free -m | grep Mem | awk '{print $4}')


echo "#########################################################"
echo "Available free RAM is $FREERAM MB"
echo "#########################################################"
echo "Current Load Average $LOAD"
echo "#########################################################"
echo "Free ROOT partition size is $ROOTFREE"
