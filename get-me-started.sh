#!/bin/bash

echo "Make sure zsh is your default shell: You have vim installed and you have oh-my-zh installed: "

echo "Linking files to dotfiles"
ln -s "${HOME}/dotfiles/.npmrc" "${HOME}/.npmrc"
ln -s "${HOME}/dotfiles/.eslintrc" "${HOME}/.eslintrc"
ln -s "${HOME}/dotfiles/.zshrc" "${HOME}/.zshrc"
ln -s "${HOME}/dotfiles/.gitignore_global" "${HOME}/.gitignore_global"
ln -s "${HOME}/dotfiles/.vimrc" "${HOME}/.vimrc"
ln -s "${HOME}/dotfiles/.hyper.js" "${HOME}/.hyper.js"

echo "copy necessary files"
mkdir -p "${HOME}/.vim/colors"
cp "${HOME}/dotfiles/vim/colors/cobalt2.vim" "${HOME}/.vim/colors"

echo "setting up vim plugins with Vundle"
mkdir -p "${HOME}/.vim/bundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s "${HOME}/dotfiles/vim/plugins.vim" "${HOME}/.vim/plugins.vim"
vim +PluginInstall +qall

# TODO: Display a success message if all goes well
