#!/bin/bash
# Script Name : sys_health.sh
# Purpose     : Checks local system resources (RAM, Disk, CPU Load)
# Author      : Senior DevOps Intern

# 1. Define Variables
LOG_TIME=$(date "+%Y-%m-%d %H:%M:%S")

echo "=========================================="
echo " SYSTEM HEALTH REPORT - $LOG_TIME"
echo "=========================================="

# 2. Check Free Memory
echo "--- Memory Usage ---"
free -h | awk 'NR==2{print "Used: "$3" / Total: "$2}'

# 3. Check Disk Space
echo -e "\n--- Disk Space ---"
df -h / | awk 'NR==2{print "Used: "$3" / Total: "$2" ("$5" used)"}'

# 4. Check Current User and Hostname
echo -e "\n--- Environment Information ---"
echo "Logged in User : $(whoami)"
echo "Hostname       : $(hostname)"
echo "=========================================="