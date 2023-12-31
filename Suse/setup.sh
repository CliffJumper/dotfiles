#!/bin/bash

echo "Setting-up openSuse"

sudo zypper refresh
sudo zypper update

sudo zypper install coreutils findutils mlocate bash-completion wget curl gpg2 tmux openssh
sudo zypper install ack exiv2 git git-lfs ghosscript ImageMagick lua51 7zip pigz pv rlwrap 
sudo zypper install tree zopfli 

for i in Common/.*; do cp "$i" ~/ ; done

# Get a patched NerdFont (or a few)
mkdir -p ~/.local/share/fonts && curl -fLo ~/.local/share/fonts/Meslo.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Meslo.zip
pushd ~/.local/share/fonts
unzip -o Meslo.zip 
popd
fc-cache -f -v
