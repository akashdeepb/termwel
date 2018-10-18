#!/bin/bash
echo -e "\t\t W E L C O M E     T O     T E R M W E L "
echo " An Open Source Project to Welcome users to Terminal "
echo -e "\033[1;36m github : https://github.com/akashdeepb/termwel \033[1;m "
chmod +x term.sh
wd=$(pwd)
grep "./term.sh" ~/.bashrc
if [ $? -eq 0 ];then
    echo -e "\t\t --------------------------"
    echo -e "\t\t  Termwel already exists. \n\t  To reinstall run remove.sh then run termwel.sh"
    echo -e "\t\t --------------------------"
else
    echo -n "cd " >>~/.bashrc && echo $wd >> ~/.bashrc && echo "./term.sh" >>~/.bashrc && echo "cd" >>~/.bashrc
fi
echo -e "\n\n\t --  INSTALLING REQUIREMENTS -- "
sudo apt-get install figlet
sudo apt-get install toilet
sudo apt-get install sysvbanner
