#!/usr/bin/env bash
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

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

brew tap bradp/vv
brew tap caskroom/cask
brew tap homebrew/boneyard
brew tap homebrew/core
brew tap homebrew/dupes
brew tap homebrew/php
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
brew install gnu-sed --with-default-names

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi

brew install ack
brew install bash-completion
brew install dark-mode
brew install dnsmasq
brew install dos2unix
brew install flow
brew install httpie
brew install imagemagick --with-webp

brew install lftp
brew install libyaml
brew install lnav

brew install lynx

brew install mackup
brew install macvim
brew install php70

brew install python
brew install python3

brew install ssh-copy-id
brew install testssl
brew install tmux
brew install tree

brew install vv
brew install watchman
brew install wget
brew install xz
brew install youtube-dl
brew install z
brew install zsh
brew install zsh-completions

# Casks
brew cask install alfred
brew cask install appcleaner
brew cask install caffeine
brew cask install cheatsheet
brew cask install dropbox
brew cask install flux
brew cask install google-chrome
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
brew cask install superduper
brew cask install vlc

# Remove outdated versions from the cellar.
brew cleanup
