alias tree='tree -l'
alias glg='git log --decorate --oneline --graph'
alias gst='git status -bs'
alias cmt='git commit -m'
alias add='git add'
alias bch='git branch'
alias cho='git checkout'
alias chp='git cherry-pick'
alias rst='git reset'
alias undo='git reset --soft HEAD^'
alias gdf='git diff'

export EDITOR=vim

PS1='\[\033[01;32m\][\W]\[\033[00m\]\[\033[01;34m\]$(__git_ps1 "[%s]")\[\033[00m\]\[\033[1;35m\] -> \[\033[00m\]'
