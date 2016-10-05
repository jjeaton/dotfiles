# Aliases
alias ls='ls -GhF'
alias ll='ls -l'
alias e='subl . &'
alias zs='source ~/.zshrc'

alias t='trash'
alias rm='trash'

# vagrant
alias v='vagrant'
alias wpv='wp ssh --host=vagrant'
alias vxdebug='vagrant ssh -c "xdebug_on"'
alias vssh='vagrant ssh'

# MAMP
alias mphp='/Applications/MAMP/bin/php/php5.5.3/bin/php'
alias mpear='/Applications/MAMP/bin/php/php5.5.3/bin/pear'
alias mpecl='/Applications/MAMP/bin/php/php5.5.3/bin/pecl'

# laravel
alias artisan='php artisan'

# networking
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias pt='ping google.com'
alias flushdns='dscacheutil -flushcache;sudo killall -HUP mDNSResponder;'
alias fixhosts='sudo chmod +a "josh allow write,append" /etc/hosts'
