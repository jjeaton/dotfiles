# Aliases
alias ls='ls -GhF'
alias ll='ls -l'
alias e='subl . &'
alias zs='source ~/.zshrc'

alias t='trash'
alias rm='rm -i'

# vagrant
alias v='vagrant'
alias wpv='wp ssh --host=vagrant'
alias vxdebug='vagrant ssh -c "xdebug_on"'
alias vssh='vagrant ssh'

# laravel
alias artisan='php artisan'

# composer
alias composer="php -d memory_limit=-1 -n /usr/local/bin/composer"

# networking
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias pt='ping google.com'
alias flushdns='dscacheutil -flushcache;sudo killall -HUP mDNSResponder;'
alias fixhosts='sudo chmod +a "josh allow write,append" /etc/hosts'
alias wakepro='wakeonlan "$MACPRO"'

# Recursively remove .DS_Store files
alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"
