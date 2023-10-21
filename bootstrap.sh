#!/bin/bash

# Uses bash because it's more common.  We might have to install zsh/fish/etc., so we can't start by using them

# Make sure we have the latest? 
# TODO: Consider that git might not be insalled yet
git pull origin main;

function doIt() {
	SYSTEM=$(uname)
	FULLDIR=$PWD/$SYSTEM
	echo $FULLDIR
	
	[ -d "$FULLDIR" ] && $FULLDIR/setup.sh
	# source ~/.zshrc
}


if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;
