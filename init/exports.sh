# yarn global as set in the installation script
export PATH="$PATH:`yarn --offline global bin`"

# npm global path to prevent install npm with sudo
export NPM_PACKAGES="${HOME}/.npm-packages"

# Insert globally installed npm packages to path
export PATH="$NPM_PACKAGES/bin:$PATH"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# Insert scripts to path
export PATH=$PATH:$HOME/dotfiles/scripts
export EDITOR=vim

export DATE=`date +%d-%m-%Y`

# Insert flutter to path
export PATH=$PATH:/media/eric/_dde_data/Projects/05-flutter/bin:/home/eric/.android-studio/bin

# Insert home bin to path
export PATH=$PATH:$HOME/bin/

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
