#!/bin/bash

##### This script display about the system informaton #######

# Descriptoins: This is the first script prints system information
# Author: Senthil Veeranan
# Date: 08-April-2021
# Modified: 08-April-2021

echo "Welcome to bash script"
echo 
echo "###############################" 
# checkin system uptime
echo "The uptime of the system is:"
uptime
echo 
echo "###############################" 
# memory utilization
echo "Memory Utilization"
free -m 
echo 
echo "###############################" 
# system disk utilization
echo "Disk utilization"
df -h


