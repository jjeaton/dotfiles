# dotfiles

Steps:

1. Update macOS to the latest version with the App Store
1. Install Xcode from the App Store, open it and accept the license agreement
1. Install macOS Command Line Tools by running xcode-select --install
2. [Disable iCloud Photos](http://www.howtogeek.com/215331/how-to-disable-os-xs-icloud-photo-and-video-sharing/)
1. Copy public and private SSH keys to ~/.ssh and make sure they're set to 600
1. Clone the repo: `git clone git@github.com:jjeaton/dotfiles.git ~/.dotfiles`.
2. Create `.localrc` for local environment variables and customizations.
3. Create `.slack` for Day One to Slack workflow:
    ```
    SLACK_TOKEN_RS=
    SLACK_CHANNEL_STANDUP=
    ```
3. Remap Caps Lock to Ctrl for each keyboard.
   System Preferences > Keyboard > Modifier Keys...
4. Run `./brew.sh` to install dependencies.
5. Change shell to zsh `sudo sh -c "echo '/usr/local/bin/zsh' >> /etc/shells"`
	1. Verify with `cat /etc/shells | grep /usr/local/bin/zsh`
	2. Change shell `chsh -s /usr/local/bin/zsh`
2. Run `./install.sh`.
4. Emoji substitutions were downloaded to `assets/config/emoji-substitutions.plist` drag them into the pane in Preferences > Keyboard > Text.
1. Set up Dropbox and ensure it is synced.
2. Install remaining apps that aren't supported by brew-cask.
5. Link the mackup configuration into home (otherwise it won't register our custom backup directory) `ln -s ~/Dropbox\ \(Personal\)/Backups/mackup/.mackup.cfg ~/.mackup.cfg`
6. Run `mackup restore` to link the mackup configuration files.
7. Run `./node/install.sh` to install nvm, node, npm and global npm packages.
8. Run `nvm use default` or restart shell

App configuration managed by mackup:

* bettertouchtool
* caffeine
* composer
* mackup
* dash
* flux
* gasmask
* go2shell
* hazel
* jumpcut
* nvalt
* oh-my-zsh (custom directory)
* phpstorm
* s3cmd
* scrivener
* services (OS X Library/Services)
* soulver
* sublime-text-3 (Packages/User directory)
* textexpander
* wp-cli
* .gitignore_global

### Install all previous App Store purchases

* Soulver
* Slack
* Glui
* Day One
* Frank DeLoupe
* ForkLift
* GeekTool
* The Unarchiver
* Evernote
* Kindle

