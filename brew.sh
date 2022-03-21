#!/usr/bin/env bash
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Usually in PATH but need to add here as we haven't updated bash_profile yet.
export DOTFILES=$HOME/.dotfiles
source $DOTFILES/bash/confirm.sh

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
  fi

fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formula.
brew upgrade

# brew tap caskroom/cask
brew tap homebrew/cask-fonts
brew tap heroku/brew
brew tap homebrew/services
# brew tap homebrew/dupes
# brew tap homebrew/versions

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
brew install vim

brew install ack
brew install autojump
brew install awscli
brew install bash-completion
brew install doxygen
brew install dnsmasq
brew install dos2unix
brew install ffmpeg
#brew install flow
brew install git
brew install heroku
brew install httpie
brew install hub
brew install imagemagick
brew install jq

brew install lftp
brew install libav
brew install libyaml
brew install lnav
brew install lynx

brew install mackup
# confirm "Install mariadb? [y/N]" && brew install mariadb
# confirm "Install mongodb? [y/N]" &&  brew install mongodb
brew install multimarkdown
brew install mysql
brew install nginx

brew install redis
brew install openssl
brew install curl
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
# brew install --cask adium
brew install --cask aerial
# brew install --cask alfred
# brew install --cask atom
# brew install --cask bartender
# brew install --cask bettertouchtool
# brew install --cask betterzip
brew install --cask caffeine
# brew install --cask cheatsheet
# brew install --cask dash
# brew install --cask docker
# brew install --cask dropbox
# brew install --cask fantastical
brew install --cask fastscripts
# brew install --cask firefox
# brew install --cask flux
# brew install --cask go2shell
# brew install --cask google-chrome
# brew install --cask hazel
# brew install --cask iterm2
# brew install --cask imageoptim
# brew install --cask jumpcut
brew install --cask keyboard-maestro
# brew install --cask macgdbp
brew install --cask marked
# brew install --cask microsoft-office
# brew install --cask omnidisksweeper
brew install --cask qlmarkdown quicklook-json qlprettypatch quicklook-csv qlimagesize webpquicklook suspicious-package
# brew install --cask recordit
# brew install --cask rescuetime
# brew install --cask sequel-pro
brew install --cask skim
brew install --cask skype
# brew install --cask sketch
# brew install --cask spotify
# brew install --cask sublime-text
# brew install --cask superduper
# brew install --cask textexpander # Installs the old non-Sass version.
# brew install --cask transmit
# brew install --cask virtualbox
# brew install --cask vagrant
# brew install --cask vagrant-manager
brew install --cask visual-studio-code
brew install --cask vlc
# brew install --cask xscope
# brew install --cask zoomus

# Fonts
# brew install --cask font-inconsolata-dz
brew install --cask font-inconsolata-dz-for-powerline

# Remove outdated versions from the cellar.
brew cleanup
