#!/bin/sh
[[ $(which brew)  == "" ]] && echo 'installing homebrew' \
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

[[ $(ls ~/.vim/autoload/plug.vim 2> /dev/null)  == "" ]] && echo 'installing vim-plug' \
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

[[ $(which fzf) == "" ]] && echo 'installing fzf' \
  brew install fzf

[[ $(which ag) == "" ]] && echo 'installing ag' \
  brew install the_silver_searcher

echo 'symlinking vimrc, tmux.conf and bash_profile'
ln -sf "$(pwd)/vimrc" ~/.vimrc
ln -sf "$(pwd)/tmux.conf" ~/.tmux.conf
ln -sf "$(pwd)/bash_profile" ~/.bash_profile

echo 'making ~/.vim/backup and ~/.vim/swap directories'
mkdir ~/.vim/backup ~/.vim/swap 2> /dev/null
