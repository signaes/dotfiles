#!/bin/sh
brew install fzf
brew install tmux
brew install tmuxinator
brew install the_silver_searcher
brew install ripgrep
brew install rbenv && rbenv init
curl -o ~/.git-completion.zsh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
curl -o ~/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
brew install bash-completion
brew install zsh-completion

echo 'symlinking vimrc, tmux.conf, bash_profile and zshrc'
ln -sf "$(pwd)/src/vimrc" ~/.vimrc
ln -sf "$(pwd)/src/tmux.conf" ~/.tmux.conf
ln -sf "$(pwd)/src/bash_profile" ~/.bash_profile
ln -sf "$(pwd)/src/zshrc" ~/.zshrc

[[ $(ls ~/.vim | grep backup 2> /dev/null) == "" ]] && echo 'making ~/.vim/backup and ~/.vim/swap dirs' && \
  mkdir ~/.vim/backup ~/.vim/swap 2> /dev/null
