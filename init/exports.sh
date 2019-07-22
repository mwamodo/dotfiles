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

# Load nvm automatically when a dir has .nvmrc file
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
