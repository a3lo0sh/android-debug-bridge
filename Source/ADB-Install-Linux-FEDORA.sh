#!/bin/bash

#  ADB Install.sh
#  
#  This script installs adb and fastboot into usr/bin/
#  This may be run from anywhere and is compatible with Linux
echo "This will install ADB and Fastboot on your computer."
echo "Root Permissions required. Please type your password."
sudo cd ~ #Gives Superuser permissions
cd "`dirname "$0"`" #CDs to script directory
echo "Installing 32-bit packages"
yum install glibc.i686 glibc-devel.i686 libstdc++.i686 zlib-devel.i686 ncurses-devel.i686 libX11-devel.i686 libXrender.i686 libXrandr.i686
echo "32-bit packages installed"
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