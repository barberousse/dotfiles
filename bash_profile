if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
