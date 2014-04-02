#!/bin/bash

#  ADB Install.sh
#  
#  This script installs adb and fastboot into /usr/bin/

echo "This will install ADB and Fastboot on your computer."
echo "Root Permissions required. Please type your password."
sudo cd ~ #Gives Superuser permissions
cd "`dirname "$0"`" #CDs to script directory
echo "Changed directory to `pwd`" #Informs user of path change
echo "Moving ADB"
sudo mv Mac/adb_Mac /usr/bin/adb #Moves adb
echo "ADB Moved to /usr/bin/adb"
echo "moving Fastboot"
sudo mv Mac/fastboot_Mac /usr/bin/fastboot #Moves Fastboot
echo "Fastboot moved to /usr/bin/fastboot"
echo "You may now run Android Debug Bridge and Fastboot commands"
echo "Have a nice day."