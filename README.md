# dotfiles

Steps:

1. Clone the repo: `git clone git@github.com:jjeaton/dotfiles.git ~/.dotfiles`.
2. Run `./install.sh`.
3. Remap Caps Lock to Ctrl for each keyboard.
   System Preferences > Keyboard > Modifier Keys...
4. Emoji substitutions were downloaded to `assets/config/emoji-substitutions.plist` drag them into the pane in Preferences > Keyboard > Text.
5. Link the mackup configuration into home (otherwise it won't register our custom backup directory) `ln -s ~/Dropbox\ \(Personal\)/Backups/mackup/.mackup.cfg ~/.mackup.cfg`
6. Run `mackup restore` to link the mackup configuration files.

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
* soulver
* sublime-text-3 (Packages/User directory)
* textexpander
* wp-cli
* .gitignore_global
