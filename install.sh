#!/usr/bin/env bash

# Install dotfiles


# Make symlinks

DOTFILES_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"  # dotfiles directory
DOTBAK=~/.dotfiles_old                                         # old dotfiles backup directory
# list of files/folders to symlink in homedir
files=".vimrc"

##########

# create dotfiles_old in homedir
echo "Creating $DOTBAK for backup of any existing dotfiles in ~"
mkdir -p $DOTBAK
echo "...done"

# change to the dotfiles directory
echo "Changing to the $DOTFILES_ROOT directory"
cd $DOTFILES_ROOT
echo "...done"

# move any existing dotfiles in homedir to dotfiles_bak directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $DOTBAK"
    mv ~/$file $DOTBAK/
    echo "Creating symlink to $file in home directory."
    ln -sv $DOTFILES_ROOT/$file ~/$file
done

# Install Sublime Text icon
cp "$DOTFILES_ROOT/assets/icons/st.icns" "/Applications/Sublime Text.app/Contents/Resources/Sublime Text.icns"
killall Dock

