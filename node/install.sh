#!/usr/bin/env bash

# set -e

export DOTFILES=$HOME/.dotfiles
source $DOTFILES/bash/confirm.sh

confirm "Install node? [y/N]"
if [[ $? -eq 0 ]]; then
	brew update
	brew install node
fi

confirm "Install npm global packages? [y/N]"
if [[ $? -eq 0 ]]; then
	npm install -g \
		@automattic/vip \
		babel-cli \
		browser-sync \
		create-react-app \
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

confirm "Install nvm? [y/N]"
if [[ $? -eq 0 ]]; then
	# Install NVM without touching profile, as we've customized it ourselves
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | PROFILE="/dev/null" bash
fi

echo ''
echo 'You may want to check your ~/.zshrc and ~/.bash_profile to remove any lines added by the installer.'
echo ' Press [ENTER] to continue when ready.'
read -n 0 DUMMY

echo "The currently installed version of node is: $(node -v)"

exit 0
