#!/bin/bash

#assigns the variable OS to the output of the uname command
OS=$(uname)

#tests if the current OS is Linux by testing if the variable OS contains the string 'Linux'
#If it does not, then an error will be appended to the linux setup log and runs the exit command
#If it is then then if statement ends
if [ "$OS" != "Linux" ]
then
	echo 'Error: Incorrect Operating System' >> linuxsetup.log
	exit

fi



#This command will create the ~/.TRASH directory
#If it already exists the error message will redirect to the linuxsetup.log file

mkdir ~/.TRASH 2>> linuxsetup.log

#This command will rename the .vimrc file in the home directory
#If the directory does not exist, an error message will be sent to the log file
mv ~/.vimrc ~/.bup_vimrc 2>> linuxsetup.log

#The following redirects the contents of the .dotfiles vimrc into the home directory .vimrc
cat ~/.dotfiles/etc/vimrc > ~/.vimrc

#The following command appends the string to the .bashrc file in the home directory and to the log file
#The following site was used to research the tee command
#https://askubuntu.com/questions/467976/how-to-append-command-output-to-multiple-files
echo 'source ~/.dotfiles/etc/bashrc_custom' >> ~/.bashrc
