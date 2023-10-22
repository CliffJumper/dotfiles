#!/bin/bash

## Setup neovim
mkdir -p ~/.config/nvim/autoload

# Get vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Get our config
cp Common/init.lua ~/.config/nvim/init.lua
echo "Remember: you might have to run :PlugInstall the first time you launch nvim"
