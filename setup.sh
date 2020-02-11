#!/bin/bash

DOT_FILES=(.tmux.conf .vim .vimrc .vimrc.keymap .zshrc .zpreztorc)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
