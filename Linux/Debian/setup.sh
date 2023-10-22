#!/bin/bash
# TODO: Need to update for restructuring

## Install some tools
sudo apt install coreutils
sudo apt install findutils
sudo apt install mlocate
sudo apt install bash-completion
sudo apt install wget
sudo apt install curl
sudo apt install gnupg
sudo apt install tmux
sudo apt install openssh-client
sudo apt install openssh-server
sudo apt install xz-utils
sudo apt install tmux
sudo apt install ack
sudo apt install exiv2
sudo apt install git
sudo apt install git-lfs
sudo apt install ghostscript
sudo apt install imagemagick
sudo apt install lua5.3
sudo apt install p7zip
sudo apt install pigz
sudo apt install pv
sudo apt install rlwrap
sudo apt install tree
sudo apt install vbindiff
sudo apt install zopfli
sudo apt install fontconfig

## Setup neovim
mkdir -p ~/.config/nvim/autoload
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mv Common/init.lua ~/.config/nvim/
echo "Remember: you might have to run :PlugInstall the first time you launch nvim"

curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k

for i in Common/.*; do cp "$i" ~/ ; done

mkdir -p ~/.local/share/fonts && cp Common/Fira\ Code\ Medium\ Nerd\ Font\ Complete.ttf ~/.local/share/font
fc-cache -f -v

cp Linux/.aliases $HOME/


