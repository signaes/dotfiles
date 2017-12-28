#!/bin/sh

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -sf "$(pwd)/vimrc" ~/.vimrc
ln -sf "$(pwd)/tmux.conf" ~/.tmux.conf
ln -sf "$(pwd)/bash_profile" ~/.bash_profile
mkdir ~/.vim/backup ~/.vim/swap
