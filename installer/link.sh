#!/bin/bash
# Copyright (c) 2022 Midori Ado All Rights Reserved.
#    _ _       _          _     
#   | (_)_ __ | | __  ___| |__  
#   | | | '_ \| |/ / / __| '_ \ 
#   | | | | | |   < _\__ \ | | |
#   |_|_|_| |_|_|\_(_)___/_| |_|
#                            

echo "########################"
echo "#  MAKE SYMBOLIC LINK  #"
echo "########################"
cd $MAIN_PATH/shared
for f in .??*
do
    [[ "$f" == ".gitignore" ]] && continue

    ln -sf $MAIN_PATH/shared/$f ~/$f
    echo "$f linked!"
done
cd $MAIN_PATH/shared/Linux
for f in .??*
do
    [[ "$f" == ".gitignore" ]] && continue

    ln -sf $MAIN_PATH/shared/Linux/$f ~/$f
    echo "$f linked!"
done
