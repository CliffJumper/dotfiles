#!/bin/bash

echo "Setting-up Arch/Manjaro"

## Install some tools
sudo pacman -S --noconfirm coreutils findutils plocate htop wget curl gnupg tmux openssh xz ack exiv2 git git-lfs lua p7zip pigz pv rlwrap tree vbindiff zopfli fontconfig nvm
sudo pacman -S --noconfirm imagemagick ghostscript
sudo pacman -S --noconfirm neovim

# TODO: Investigate switch for zsh
# sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# git clone https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k

for i in Common/.*; do cp "$i" ~/ ; done

# Get a patched NerdFont (or a few)
mkdir -p ~/.local/share/fonts && curl -fLo ~/.local/share/fonts/Meslo.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Meslo.zip
pushd ~/.local/share/fonts
unzip -o Meslo.zip 
popd
fc-cache -f -v
