#!/bin/bash

#removes the .vimrc file from the home directory
rm -r ~/.vimrc

#replaces the last line of the .bashrc file with nothing
#^ is used as the delimiter within the sed argument to avoid conflict with the / characters in the text
#https://www.tutorialspoint.com/unix/unix-regular-expressions.htm
sed -i 's^source ~/.dotfiles/etc/bashrc_custom^^g' ~/.bashrc

#removes the .TRASH directory from the home directory
rm -rf ~/.TRASH
