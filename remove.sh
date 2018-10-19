#!/bin/bash
echo -e "\t\t W E L C O M E     T O     T E R M W E L "
echo " An Open Source Project to Welcome users to Terminal "
echo -e "\033[1;36m github : https://github.com/akashdeepb/termwel \033[1;m "
read -p "Are you sure you want to remove Termwel?(y/n) : " ans
if [ $ans == 'y' ];then
    sed -i '/termwel/d' ~/.bashrc
else
    echo "Cancelled by User ... ;)"
    exit
fi
read -p "Do you want to remove all files of Termwel?(y/n) : " ans
if [ $and == 'y' ];then
    #rm -rf *
    exit
else 
    echo "Continuing ... "
    exit