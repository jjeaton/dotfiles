# dotfiles


Steps:

1. Update macOS to the latest version with the App Store
1. Install Xcode from the App Store, open it and accept the license agreement
1. Install macOS Command Line Tools by running xcode-select --install
1. Copy public and private SSH keys to ~/.ssh and make sure they're set to 600
1. Clone the repo: `git clone git@github.com:jjeaton/dotfiles.git ~/.dotfiles`.
2. Create `.localrc` for local environment variables and customizations.
3. Remap Caps Lock to Ctrl for each keyboard.
   System Preferences > Keyboard > Modifier Keys...
4. Run `./brew.sh` to install dependencies.
7. Run `./node/install.sh` to install node, npm and global npm packages.
9. Ensure node and the pure-prompt are configured prior to switching to zsh. You may need to remove the oh-my-zsh theme `pure` from `zsh/config.zsh` temporarily until it's working.
5. Change shell to zsh `sudo sh -c "echo '/opt/homebrew/bin/zsh' >> /etc/shells"`
	1. Verify with `cat /etc/shells | grep /opt/homebrew/bin/zsh`
	2. Change shell `chsh -s /opt/homebrew/bin/zsh`
    3. Install oh-my-zsh `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
2. Run `./install.sh`.
4. Emoji substitutions were downloaded to `assets/config/emoji-substitutions.plist` drag them into the pane in Preferences > Keyboard > Text.
1. Set up Dropbox and ensure it is synced.
2. Install remaining apps that aren't supported by brew-cask.
3. Open Sublime Text 3 and install Package Control before syncing preferences with Mackup.
5. Link the mackup configuration into home (otherwise it won't register our custom backup directory) `ln -s ~/Dropbox\ \(Personal\)/Backups/mackup/.mackup.cfg ~/.mackup.cfg`
6. Run `mackup restore` to link the mackup configuration files.
7. Run `.macos` to configure macOS settings.
8. Install Inconsolata-dz font from `assets` folder.
9. [Load iterm2 settings](https://gitlab.com/gnachman/iterm2/-/issues/8029#note_200395054)

App configuration managed by mackup:

* bettertouchtool
* caffeine
* composer
* custom-files (.gitignore_global)
* mackup
* dash
* flux
* gasmask
* go2shell
* hazel
* jumpcut
* nvalt
* oh-my-zsh-custom (custom directory)
* phpstorm
* s3cmd
* scrivener
* services (OS X Library/Services)
* soulver
* ssh-config (custom sync of .ssh/config)
* sublime-text-3 (Packages/User directory)
* subversion
* textexpander
* wp-cli

### Install all previous App Store purchases

* Soulver
* Slack
* Day One
* The Unarchiver
* Kindle


### Install other apps

* [Firefox Developer Edition](https://www.mozilla.org/en-US/firefox/developer/)
* IVPN
* Adobe: Photoshop CC
* Microsoft Office
* PDFPenPro
* Tor
* uTorrent / Transmission
* Unclutter (Dropbox sync)

### Additional configuration

* Alfred: [Configure Dropbox sync](https://www.alfredapp.com/help/advanced/sync/)
* iTerm2: Configure to load preferences from ~/Dropbox/Backups/iterm2
* Transmit: Enable favorites syncing via Dropbox
* Google Chrome: Login to Profile
* Firefox: Login to Firefox Sync
* Add all SSH keys to the ssh-agent (with passphrase) `ssh-add -K ~/.ssh/private-key-name`
* Backblaze: Configure backup
* SuperDuper: Configure backup
* Day One: Configure Dropbox sync

### Configure licenses

* BetterTouchTool (1password)
* Alfred 3 (1password)
* Sublime Text 3 (1password)
* Dash (1password)
* Fantastical 2 (1password)
* Marked 2 (1password)
* Unclutter (1password)
