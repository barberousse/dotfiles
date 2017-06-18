source ~/.git-completion.bash

export HISTCONTROL=ignoreboth:erasedups #Only keep the latest version of duplicate commands
export EDITOR=nvim
export PS1="\[\033[0;34m\]\W\[\033[0m\] \[\033[0;31m\]λ\[\033[0m\] "

l   () { command ls -GLA $1; }
dr  () { tree -l -C -L 2 $1; }
