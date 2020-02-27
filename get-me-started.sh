#!/bin/bash

# 1. TODO: Install zsh and make it your defualt shell
# 2. TODO: Install vim
# 3. TODO: install oh-my-zsh

echo "Installed zsh, made it your default shell"
echo "Installed vim"
echo "You are now using oh-my-zsh"

# Linking files to dotfiles

echo "Linking files to dotfiles"
ln -s "${HOME}/dotfiles/.npmrc" "${HOME}/.npmrc"
ln -s "${HOME}/dotfiles/.eslintrc" "${HOME}/.eslintrc"
rm -v "${HOME}/.zshrc" "${HOME}/"
ln -s "${HOME}/dotfiles/.zshrc" "${HOME}/.zshrc"
ln -s "${HOME}/dotfiles/.gitignore_global" "${HOME}/.gitignore_global"
ln -s "${HOME}/dotfiles/.vimrc" "${HOME}/.vimrc"
ln -s "${HOME}/dotfiles/.hyper.js" "${HOME}/.hyper.js"
# Add Taskwarrior config to shortcut to linking to dotfiles

# Vim things

echo "copy necessary files"
mkdir -p "${HOME}/.vim/colors"
cp "${HOME}/dotfiles/vim/colors/cobalt2.vim" "${HOME}/.vim/colors"

echo "setting up vim plugins with Vundle"
mkdir -p "${HOME}/.vim/bundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s "${HOME}/dotfiles/vim/plugins.vim" "${HOME}/.vim/plugins.vim"
vim +PluginInstall +qall

# 4. Display a success message if everything goes well