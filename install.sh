#!/bin/sh
echo 'remember to install homebrew'
echo 'remember to install vim-plug'
echo 'remember to "brew install fzf"'
echo 'remember to "brew install tmux"'
echo 'remember to "brew install tmuxinator"'
echo 'remember to "brew install the_silver_searcher"'
echo 'remember to "brew install rbenv && rbenv init"'
echo 'remember to "curl -o ~/.git-completion.zsh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh"'
echo 'remember to "curl -o ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash"'
echo 'remember to "brew install bash-completion"'
echo 'remember to "brew install zsh-completion"'

echo 'symlinking vimrc, tmux.conf, bash_profile and zshrc'
ln -sf "$(pwd)/src/vimrc" ~/.vimrc
ln -sf "$(pwd)/src/tmux.conf" ~/.tmux.conf
ln -sf "$(pwd)/src/bash_profile" ~/.bash_profile
ln -sf "$(pwd)/src/zshrc" ~/.zshrc

[[ $(ls ~/.vim | grep backup 2> /dev/null) == "" ]] && echo 'making ~/.vim/backup and ~/.vim/swap dirs' && \
  mkdir ~/.vim/backup ~/.vim/swap 2> /dev/null
