#!/bin/sh
[[ $(which brew)  == "" ]] && echo 'installing homebrew' && \
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

[[ $(ls ~/.vim/autoload/plug.vim 2> /dev/null)  == "" ]] && echo 'installing vim-plug' && \
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

[[ $(which fzf) == "" ]] && echo 'installing fzf' && \
  brew install fzf

[[ $(which ag) == "" ]] && echo 'installing ag' && \
  brew install the_silver_searcher

[[ $(which rbenv) == "" ]] && echo 'installing rbenv' && brew install rbenv && rbenv init

[[ $(which tmuxinator) == "" ]] && echo 'installing tmuxinator' && \
  gem install tmuxinator

[[ $(ls ~/.git-completion.bash 2> /dev/null) == "" ]] && echo 'installing git-completion' && \
  curl -o ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

[[ $(brew ls --versions bash-completion 2> /dev/null) == "" ]] && echo 'installing docker bash-completion' && brew install bash-completion

echo 'symlinking docker bash completions'
ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion /usr/local/etc/bash_completion.d/docker
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion /usr/local/etc/bash_completion.d/docker-machine
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion /usr/local/etc/bash_completion.d/docker-compose

echo 'symlinking vimrc, tmux.conf and bash_profile'
ln -sf "$(pwd)/src/vimrc" ~/.vimrc
ln -sf "$(pwd)/src/tmux.conf" ~/.tmux.conf
ln -sf "$(pwd)/src/bash_profile" ~/.bash_profile

[[ $(ls ~/.vim | grep backup 2> /dev/null) == "" ]] && echo 'making ~/.vim/backup and ~/.vim/swap dirs' && \
  mkdir ~/.vim/backup ~/.vim/swap 2> /dev/null
