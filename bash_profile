function gitBranch() {
  BRANCH=`git rev-parse --abbrev-ref HEAD 2> /dev/null`
  if [ ! "${BRANCH}" == "" ]
  then
    echo "${BRANCH} "
  else
    echo ""
  fi
}

export PS1="\[\e[37;2m\]\W \[\e[0m\]\$\[$(tput sgr0)\] \[\e[32;5m\]\`gitBranch\`\[\e[0m\]"

alias pro="cd ~/Projetos"
alias projetos="pro"
alias reload="source ~/.bash_profile"

source "$(pwd)/git/alias" 2> /dev/null
source ~/.fzf.bash 2> /dev/null
source ~/.git-completion.bash 2> /dev/null
