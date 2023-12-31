#!/bin/bash

###############################################################################
## What's our Distro?
###############################################################################
DISTRO=$(cat /etc/os-release | grep ^ID= | cut -d "=" -f 2)
echo $DISTRO

###############################################################################
## Setup Distro
###############################################################################
case $DISTRO in 
    manjaro | arch)
        DISTRO_DIR="$FULLDIR/Arch"
        ;;
    
    debian)
        DISTRO_DIR=$FULLDIR/Debian
        ;;
    
    opensuse-tumbleweed )
        DISTRO_DIR="$FULLDIR/Suse"
        ;;
    
    *)
        echo "Unknowns/Unsuppored distribuion"
        exit -2
        ;;
esac
[ -d "$DISTRO_DIR" ] && . $DISTRO_DIR/setup.sh

###############################################################################
## Setup neovim
###############################################################################
$FULLDIR/setup_neovim.sh

###############################################################################
## Setup Node/NVM
###############################################################################
# ./setup_nvm.sh



###############################################################################
## Zsh?
###############################################################################
# sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# git clone https://github.com/romkatv/powerlevel10k.git $HOME/.oh-my-zsh/custom/themes/powerlevel10k

###############################################################################
## Copy stuff
###############################################################################
# for i in Common/.*; do cp "$i" ~/ ; done

###############################################################################
## Setup Fonts
###############################################################################
# sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# mkdir -p ~/.local/share/fonts && cp Common/Fira\ Code\ Medium\ Nerd\ Font\ Complete.ttf ~/.local/share/font
# fc-cache -f -v

# cp Linux/.aliases $HOME/


