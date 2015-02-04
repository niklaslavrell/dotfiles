#
# Pulls master and syncs the dotfiles to ~
#

#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "README.md" \
		--exclude "LICENSE-MIT.txt" \
		--exclude "sync.sh" \
		--exclude "brew.sh" \
        --exclude "brew-cask.sh" \
        --exclude "npm.sh" \
        --exclude "setup-a-new-machine.sh" -av . ~
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
source ~/.bash_profile