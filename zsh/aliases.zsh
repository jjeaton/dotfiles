# Aliases
alias ls='ls -GhF'
alias ll='ls -l'
alias e='subl . &'
alias zs='source ~/.zshrc'

alias t='trash'
alias rm='rm -i'

alias nvml="[ -s "$NVM_DIR/nvm.sh" ] && \. '$NVM_DIR/nvm.sh'"

# python2 is EOL
alias python=python3
alias pip=pip3

# laravel
alias artisan='php artisan'

# composer
# alias composer="php -d memory_limit=-1 -n /usr/local/bin/composer"

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

# determine versions of PHP installed with HomeBrew
installedPhpVersions=($(brew ls --versions | ggrep -E 'php(@.*)?\s' | ggrep -oP '(?<=\s)\d\.\d' | uniq | sort))

# create alias for every version of PHP installed with HomeBrew
for phpVersion in ${installedPhpVersions[*]}; do
    value="{"

    for otherPhpVersion in ${installedPhpVersions[*]}; do
        if [ "${otherPhpVersion}" = "${phpVersion}" ]; then
            continue
        fi

        # unlink other PHP version
        value="${value} brew unlink php@${otherPhpVersion};"
    done

    # link desired PHP version
    value="${value} brew link php@${phpVersion} --force --overwrite; } &> /dev/null && php -v"

    alias "${phpVersion}"="${value}"
done
