# List Directories
alias l="ls"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -al"

# Better Git
alias gs="git status -s"
alias gc="cz"
alias gpom="git push origin master"
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
alias mff="php artisan migrate:fresh"
alias mfs="php artisan migrate:fresh --seed"
alias mf="php artisan migrate"
alias ms="php artisan migrate:status"
alias tinker="php artisan tinker"
alias db:wipe="php artisan db:wipe"
alias db:seed="php artisan db:seed"

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