#!/bin/bash

DOT_FILES=(.tmux .tmux.conf .vim .ideavimrc .zlogin .zlogout .zprezto .zpreztorc .zprofile .zshenv .zshrc)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done

# neovim setting file
ln -s $HOME/dotfiles/init.vim $HOME/.config/nvim/init.vim

# starship setting file
ln -s $HOME/dotfiles/starship.toml $HOME/.config/starship.toml
