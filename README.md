# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash.
## ./etc/bashrc custom
This contains a few aliases and functions that are helpful for operating the command line
The file was provided to me by Professor Chandarana at UofSC.
## ./etc/vimrc
This file contains a few setting for the vim editor that you may add in to any .vimrc file.
Again, provided by Prof. Chandarana.
## ./bin/linux.sh
This script will replace your home directory's .vimrc file with the ./etc/vimrc file in this repository. A backup of your current .vimrc file will be created first.
It will also create a .TRASH directory in your home directory, and will enable you to use the aliases and functions from this repository's ./etc/bashrc custom file by linking it at the end of your home directory's .bashrc file.
Note that this script will only run on linux.
## ./bin/cleanup.sh
This file will remove your home directory's .vimrc file, the .TRASH directory created by the linux.sh script, and will unlink the bashrc custom from you .bashrc file.
It effectively undoes the changes made by the linux.sh script (note that your backup .vimrc file will still be named .bup vimrc).
## ./Makefile
This make file will run the cleanup script and the linux script.
