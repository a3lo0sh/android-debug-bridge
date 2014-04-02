#!/bin/bash

#  ADB Install.sh
#  
#  This script installs adb and fastboot into usr/bin/
#  This may be run from anywhere and is compatible with Linux
echo "This will install ADB and Fastboot on your computer."
echo "Root Permissions required. Please type your password."
sudo cd ~ #Gives Superuser permissions
cd "`dirname "$0"`" #CDs to script directory
echo "Installing JDK (Not really necessary, but helpful for future)."
sudo add-apt-repository ppa:sun-java-community-team/sun-java6; sudo apt-get update; sudo apt-get install sun-java6-jre sun-java6-bin sun-java6-jdk
echo "JDK Installed"
echo "Changed directory to `pwd`" #Informs user of path change
echo "Moving ADB"
sudo mv Linux/adb_Linux /usr/bin/adb #Moves adb
echo "ADB Moved to /usr/bin/adb"
echo "moving Fastboot"
sudo mv Linux/fastboot_Linux /usr/bin/fastboot #Moves Fastboot
echo "Fastboot moved to /usr/bin/fastboot"
echo "Installing rules"
sudo mv Linux/51-android.rules /etc/udev/rules.d/51-android.rules #Installs rules
echo "Rules installed"
echo "You may now run Android Debug Bridge and Fastboot commands"
echo "Have a nice day."