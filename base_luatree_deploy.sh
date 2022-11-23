#!/usr/bin/bash
#
# Name:  base_luatree_deploy.sh
# Version: 0.01
# Description: Simple script to automate the creation of the directory and file tree needed
# for Neovim structure in lua. It's recommended to switch to this structure to make use of
# the whole potential from the editor and plugins.
# Contact: github.com/robbpaulsen
#
clear
echo "Warning This script may over write any existing file and/or directory if it alreadyb exists!"
sleep 2
echo
echo
echo "Ctrl + C if you want to stop this procedure"
sleep 3
mkdir -pm 700 $HOME/.config/nvim/lua
sleep 2
touch $HOME/.config/nvim/init.lua
touch $HOME/.config/nvim/lua/plugins.lua
touch $HOME/.config/nvim/lua/keybindings.lua
sleep 1
clear
echo "All Done!"
sleep 2
