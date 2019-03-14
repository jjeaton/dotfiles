#!/usr/bin/env bash
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

source $DOTFILES/bash/confirm.sh

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
  fi

fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formula.
brew upgrade

brew tap caskroom/cask
brew tap caskroom/fonts
brew tap homebrew/boneyard
brew tap homebrew/core
brew tap homebrew/dupes
# brew tap homebrew/php
brew tap homebrew/services
brew tap homebrew/versions

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
# Don’t forget to add `$(brew --prefix findutils)/libexec/gnubin` to `$PATH`.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
# brew install gnu-sed --with-default-names

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi

brew install ack
brew install autojump
brew install awscli
brew install bash-completion
brew install doxygen
brew install dnsmasq
brew install dos2unix
brew install ffmpeg
brew install flow
brew install git
brew install heroku/brew/heroku
brew install httpie
brew install hub
brew install imagemagick --with-webp
brew install jq

brew install lftp
brew install libav
brew install libyaml
brew install lnav
brew install lynx

brew install mackup
confirm "Install mariadb? [y/N]" && brew install mariadb
confirm "Install mongodb? [y/N]" &&  brew install mongodb
brew install multimarkdown
brew install mysql@5.7

brew install nginx

brew install redis
brew install openssl
brew install --with-openssl curl
# https://github.com/laravel/valet/issues/329#issuecomment-287031905
# https://stackoverflow.com/questions/26461966/osx-10-10-curl-post-to-https-url-gives-sslread-error/26538127#26538127
brew install php
#brew install php71-redis
# See https://github.com/Homebrew/homebrew-php/issues/2544 if issues.
#brew install php71-intl
#brew install php71-xdebug
brew install phpunit

brew install python
brew install python@2
brew install ruby

brew install s3cmd
brew install ssh-copy-id
brew install subversion
brew install testssl
brew install tmux
brew install tree

brew install wakeonlan
brew install watchman
brew install wget
brew install xz
brew install yarn
brew install youtube-dl
brew install z
brew install zsh
brew install zsh-completions
brew install zsh-syntax-highlighting

# Casks
brew cask install adium
brew cask install aerial
# brew cask install alfred
brew cask install appcleaner
brew cask install atom
brew cask install bartender
brew cask install bettertouchtool
brew cask install betterzip
brew cask install caffeine
brew cask install cheatsheet
# brew cask install cloudup
# brew cask install codekit
# brew cask install crashplan
brew cask install dash
brew cask install docker
brew cask install dropbox
brew cask install fantastical
brew cask install fastscripts
# brew cask install firefox
brew cask install flux
# brew cask install fluid
# brew cask install go2shell
brew cask install google-chrome
brew cask install hazel
# brew cask install iterm2
brew cask install imageoptim
brew cask install jumpcut
brew cask install keyboard-maestro
brew cask install macgdbp
brew cask install marked
# brew cask install microsoft-office
brew cask install nvalt
brew cask install omnidisksweeper
brew cask install phpstorm
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv qlimagesize webpquicklook suspicious-package
brew cask install recordit
brew cask install rescuetime
brew cask install sequel-pro
brew cask install skim
brew cask install skype
brew cask install sketch
brew cask install spotify
brew cask install sublime-text
brew cask install superduper
# brew cask install textexpander # Installs the old non-Sass version.
brew cask install transmit
brew cask install virtualbox
brew cask install vagrant
brew cask install vagrant-manager
brew cask install visual-studio-code
brew cask install vlc
brew cask install xscope
brew cask install zoomus

# Fonts
brew cask install font-inconsolata-dz
brew cask install font-inconsolata-dz-for-powerline

# Remove outdated versions from the cellar.
brew cleanup
