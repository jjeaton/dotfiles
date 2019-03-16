#!/usr/bin/env bash

# set -e

source $DOTFILES/bash/confirm.sh

confirm "Install node? [y/N]"
if [[ $? -eq 0 ]]; then
	brew update
	brew install node
fi

confirm "Install npm global packages? [y/N]"
if [[ $? -eq 0 ]]; then
	npm install -g \
		babel-cli \
		browser-sync \
		coffeescript \
		create-react-app \
		ejs-compile \
		eslint \
		grunt-cli \
		gulp \
		jshint \
		json \
		mocha \
		nativefier \
		npm-check-updates \
		phplint \
		pure-prompt \
		react-native-cli \
		trash-cli
fi

echo ''
echo 'You may want to check your ~/.zshrc and ~/.bash_profile to remove any lines added by the installer.'
echo ' Press [ENTER] to continue when ready.'
read -n 0 DUMMY

echo "The currently installed version of node is: $(node -v)"

exit 0
