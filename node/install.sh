#!/usr/bin/env bash

set -e

# Install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash

export NVM_DIR=~/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

nvm install node
nvm use node
nvm alias default node

echo 'You may want to check your ~/.zshrc to remove any lines added by the installer.'

exit 0
