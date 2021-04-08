# List Directories
alias l="ls"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -al"

# Jump to directories
alias sites="cd ~/Sites"

# Better Git
alias gs="git status -s"
alias gc="git commit -m"
alias gpo="git push origin"
alias gpom="git push origin main"
alias gpod="git push origin dev"
alias glog="git log --graph --pretty=format:'''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"

# Programming and Making Work Easy
alias v="vim"
alias vi="vim"
alias c="code"
alias j="jump"
alias hd="trash .zsh_history"
alias h="history | awk '{print $2}' | sort | uniq -c | sort -rn | head -5"

# PHP | Laravel
alias artisan="php artisan"
alias a='php artisan'
alias sail='bash vendor/bin/sail'

alias horizon='php artisan horizon'
alias sail:horizon='sail php artisan horizon'

alias mff="php artisan migrate:fresh"
alias sail:mff="sail php artisan migrate:fresh"

alias mfs="php artisan migrate:fresh --seed"
alias sail:mfs="sail php artisan migrate:fresh --seed"

alias mf="php artisan migrate"
alias sail:mf="sail php artisan migrate"

alias ms="php artisan migrate:status"
alias sail:ms="sail php artisan migrate:status"

alias tinker="php artisan tinker"
alias sail:tinker="sail php artisan tinker"

alias db:wipe="php artisan db:wipe"
alias db:seed="php artisan db:seed"

alias logs:clear="truncate -s 0 storage/logs/laravel.log"
alias artisan:test='php artisan test --parallel'

# TRASH; Prevent Permanent Deletes
alias rm='echo "⛔  use trash"; false'
alias rmdir='echo "⛔  use trash"; false'

# Use shortcuts
alias clear='echo "⛔ use shortcuts!!"; false'

# The Laziness Part
alias e="exit"
alias update="_ apt update"
alias upgrade="_ apt upgrade -y"
alias reload="source ~/.zshrc"
