#!/bin/bash

DOT_FILES=(.tmux.conf .vim .vimrc .vimrc.keymap .zlogin .zlogout .zprezto .zpreztorc .zprofile .zshenv .zshrc)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
