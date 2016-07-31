#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

while getopts ':fs' opt
do
	case "$opt" in
		'f')
			force=true
			;;
		's')
			skip_update=true
			;;
		*)
			echo "Invalid option $opt";
			echo "Usage: install.sh [-f[s]]";
			echo "-f: force installation";
			echo "-s: skip update"
			echo "";
			;;
	esac;
done;

if [ "$skip_update" = true ]; then
	echo "Will skip downloading the latest version.";
else
	echo "Downloading the latest version. This may take a little while...";
	git pull origin master;
fi;

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
		--exclude "*.sh" \
		--exclude "README.md" \
		-avh --no-perms . ~;
	source ~/.bash_profile;
}

if [ "$force" = true ]; then
	doIt;
else
	echo "";
	echo "This will install the dotfiles to your home directory and is likely to overwrite existing files.";
	read -p "Are you sure? (y/N) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	else
		echo "Dotfiles were NOT installed.";
		exit 1;
	fi;
fi;

