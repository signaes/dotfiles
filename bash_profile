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

source ~/.fzf.bash 2> /dev/null
