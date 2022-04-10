#!/bin/bash
echo 
echo 
### This script prints system information ###
echo 
echo "Welcome to bash script."
echo 

# Checking system uptime
echo "###########################################" 
echo 
echo "The uptime of the system is :"
echo 
uptime
echo 
# Memory Utilization
echo "###########################################"
echo
echo "Memory utilization:"
echo 
free -m
echo 
# Disk Utilization
echo "###########################################"
echo 
echo "Disk utilizatoin:"
echo 
df -h 
