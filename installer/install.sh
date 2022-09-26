#!/bin/sh

# Copyright (c) 2021-2022 WEP inc. All Rights Reserved.
#      _           _        _ _       _
#     (_)_ __  ___| |_ __ _| | |  ___| |__
#     | | '_ \/ __| __/ _` | | | / __| '_ \
#     | | | | \__ \ || (_| | | |_\__ \ | | |
#     |_|_| |_|___/\__\__,_|_|_(_)___/_| |_|
# 

echo ""
echo "#################################################"
echo "#         dotfiles for sever ver 2.0            #"
echo "#                 >>install.sh<<                #"
echo "#################################################"
echo "Copyright (c) 2022 Aoi Kondo, WEP inc. All Rights Reserved."
echo ""
echo "Hello! Welcome to install.sh!"
echo ""

echo "Starting to install dotfile for Debian..."
echo "########################"
echo "#  MAKE SYMBOLIC LINK  #"
echo "########################"
echo "Make Symbolic link from dotfiles!"
cd $MAIN_PATH/installer
chmod 777 link.sh
./link.sh
echo "Link succeeded!"
echo ""
echo "########################"
echo "#   INSTALL SOFTWARES  #"
echo "########################"
echo "Install general softwere"

cd $MAIN_PATH/bin/init
for f in *.sh
do
    sudo apt update
    chmod 777 $f
    ./$f
done

cd $MAIN_PATH/bin/tools
for f in *.sh
do
    sudo apt update
    chmod 777 $f
    ./$f
done

echo "#######################################"
echo "#         INSTALL COMPLETE            #"
echo "#######################################"
echo "Thank you for using dotfile."
echo "Good bye and enjoy new computer!"
exit