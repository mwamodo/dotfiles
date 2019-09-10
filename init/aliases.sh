# List Directories
alias l="ls"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -al"

# Better Git
alias gs="git status -s"
alias gc="git commit -m"
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

# TRASH; Prevent Permanent Deletes
alias rm='echo "⛔  use trash"; false'
alias rmdir='echo "⛔  use trash"; false'

# Laziness Part
alias e="exit"

# taskwarrior
alias t="task"
alias tc="task calendar"
alias tbd="task burndown.daily"
alias th="task history"

# journal
alias journal="code $HOME/nine.africa/Documents/Journal/$DATE.md"
alias jencrypt="steghide embed -cf $HOME/nine.africa/Documents/Journal/$DATE.jpg -ef $HOME/nine.africa/Documents/Journal/$DATE.md"
alias jshred="shred -uv $HOME/nine.africa/Documents/Journal/$DATE.md"
alias jtdecrypt="steghide extract -sf $HOME/nine.africa/Documents/Journal/$DATE.jpg"
alias jdecrypt="steghide extract -sf"