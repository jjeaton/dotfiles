#!/usr/bin/env bash

# set -e

source $DOTFILES/bash/confirm.sh

# Install nvm
NVM_VERSION_INSTALLED='v0.32.1'
confirm "Install NVM $NVM_VERSION_INSTALLED? [y/N]"
if [[ $? -eq 0 ]]; then
	curl -o- "https://raw.githubusercontent.com/creationix/nvm/$NVM_VERSION_INSTALLED/install.sh" | bash
fi

# Load NVM
export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

confirm "Install node? [y/N]"
if [[ $? -eq 0 ]]; then
	nvm install node
	nvm use node
	nvm alias default node
fi

confirm "Upgrade node to latest version (and reinstall global packages)? [y/N]"
if [[ $? -eq 0 ]]; then
	nvm install node --reinstall-packages-from=node
fi

confirm "Install npm global packages? [y/N]"
if [[ $? -eq 0 ]]; then
	npm install -g \
		aglio \
		babel-cli \
		bower \
		coffee-script \
		dredd \
		ejs-compile \
		eslint \
		grunt-cli \
		gulp \
		jshint \
		json \
		mocha \
		npm-check-updates \
		phplint \
		pure-prompt \
		trash-cli
fi

echo ''
echo 'You may want to check your ~/.zshrc and ~/.bash_profile to remove any lines added by the installer.'
echo ' Press [ENTER] to continue when ready.'
read -n 0 DUMMY

echo "The currently installed version of node is: $(nvm current)"

# Install zsh-nvm plugin repo.
confirm "Do you want to clone the zsh-nvm repo? [y/N]"
if [[ $? -eq 0 ]]; then
	git clone https://github.com/lukechilds/zsh-nvm $HOME/.dotfiles/zsh/custom/plugins/zsh-nvm
fi

function link_pure_theme() {
	readlink "$HOME/.dotfiles/zsh/custom/themes/pure.zsh-theme" >> /dev/null
	link_exists=$?

	if [[ "$link_exists" -ne 0 ]]; then
		echo 'Linking pure prompt for zsh'
		ln -s "$NVM_DIR/versions/node/$(nvm current)/lib/node_modules/pure-prompt/pure.zsh" "$HOME/.dotfiles/zsh/custom/themes/pure.zsh-theme"
	fi
}

# Link pure prompt zsh theme.
confirm "Do you want to link the pure prompt theme to this version of node? [y/N]"
if [[ $? -eq 0 ]]; then
	link_pure_theme
fi

exit 0
