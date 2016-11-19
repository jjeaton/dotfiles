#!/usr/bin/env bash
# #############################################################################
# Install local development environment
# #############################################################################

# Install python tools and ansible
pip install --upgrade pip setuptools

# Install ansible
pip install ansible

# Create a Sites directory
# This is a default directory for macOS user accounts but doesn't comes pre-installed
mkdir -p $HOME/Sites

# Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Install global Composer packages
/usr/local/bin/composer global require laravel/installer \
	laravel/lumen-installer \
	laravel/valet psy/psysh \
	apigen/apigen behat/behat

# Install Homestead

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install
valet domain app

# Install wp-cli
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp

wp --info

# Install vvv dependencies

# install vvv if not exists

# Configure vvv

# Install vip-quickstart
