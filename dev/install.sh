#!/usr/bin/env bash
# #############################################################################
# Install local development environment
# #############################################################################

source $DOTFILES/bash/confirm.sh

# Install python tools and ansible
pip install --upgrade pip setuptools

# Install ansible
confirm "Install ansible? [y/N]"
if [[ $? -eq 0 ]]; then
	pip install ansible
fi

# Create a Sites directory
# This is a default directory for macOS user accounts but doesn't comes pre-installed
Sites="$HOME/Sites"
mkdir -p $Sites

# Install Composer
confirm "Install composer? [y/N]"
if [[ $? -eq 0 ]]; then
	curl -sS https://getcomposer.org/installer | php
	mv composer.phar /usr/local/bin/composer
fi

# Install global Composer packages
confirm "Install global composer packages? [y/N]"
if [[ $? -eq 0 ]]; then
	/usr/local/bin/composer global require \
		apigen/apigen \
		behat/behat \
		laravel/installer \
		laravel/lumen-installer \
		laravel/valet \
		psy/psysh
fi

# Install Laravel Valet
confirm "Install Laravel Valet? [y/N]"
if [[ $? -eq 0 ]]; then
	$HOME/.composer/vendor/bin/valet install
	valet domain app
fi

# Install wp-cli
confirm "Install wp-cli? [y/N]"
if [[ $? -eq 0 ]]; then
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar
	sudo mv wp-cli.phar /usr/local/bin/wp
	wp --info
fi

# Install vvv if not exists
confirm "Do you want to install vvv? [y/N] "
if [[ $? -eq 0 ]]; then
	# Install vvv dependencies
	vagrant plugin install vagrant-hostsupdater
	vagrant plugin install vagrant-triggers
	vagrant plugin install vagrant-vbguest

	if [[ ! -d "${Sites}/vvv" ]]; then
		echo -e "\nDownloading vvv"
		git clone "git://github.com/Varying-Vagrant-Vagrants/VVV.git" "$Sites/vvv"
		echo -e "\nDownloading VVV-Dashboard"
		git clone https://github.com/topdown/VVV-Dashboard.git "$Sites/vvv/www/default/dashboard"
		cp "$Sites/vvv/www/default/dashboard/dashboard-custom.php" "$Sites/vvv/www/default/"
		echo '  Run `vagrant up` to finish the install.'
	else
		echo -e "\nvvv already installed, please update manually."
	fi
fi

# Configure vvv
confirm "Do you want to install local vvv-sites? (~/.vvv-sites) [y/N]"
if [[ $? -eq 0 ]]; then
	if [[ -f "$HOME/.vvv-sites" ]]; then
		source $HOME/.vvv-sites
		echo "Run `vagrant up --provision` to set up vvv after copying over config."
	fi
fi

# Install vip-quickstart
confirm "Do you want to install vip-quickstart? [y/N]"
if [[ $? -eq 0 ]]; then
	if [[ ! -d "${Sites}/vip-quickstart" ]]; then
		echo -e "\nDownloading vip-quickstart"
		git clone --recursive https://github.com/Automattic/vip-quickstart.git "$Sites/vip-quickstart"
	else
		echo -e "\nvip-quickstart already installed, please update manually."
	fi
fi
