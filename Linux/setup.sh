#!/bin/bash

###############################################################################
## What's our Distro?
###############################################################################
if ! type "lsb_release" > /dev/null; then
    echo "lsb_release not found but required!  Exiting"
    exit -1
fi
DISTRO=$(cat /etc/os-release | grep ^ID= | cut -d "=" -f 2)

###############################################################################
## Setup Distro
###############################################################################
case $DISTRO in 
    manjaro | arch)
        siArch/setup.sh
        ;;
    
    debian)
        Debian/setup.sh
        ;;
    
    openSuse | sel)
        Suse/setup.sh
        ;;
    
    *)
        echo "Unknowns/Unsuppored distribuion"
        exit -2
        ;;
esac

###############################################################################
## Setup neovim
###############################################################################
mkdir -p ~/.config/nvim/autoload
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mv Common/init.lua ~/.config/nvim/
echo "Remember: you might have to run :PlugInstall the first time you launch nvim"

###############################################################################
## Setup Node/NVM
###############################################################################
./setup_nvm.sh



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


