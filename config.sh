#!/bin/bash

# Verify Git is installed:
if [ ! $(which git) ]; then
  echo "Git is not installed, can't continue."
  exit 1
fi

# Set .vimrc and .tmux.conf
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

# Install vim-plug
mkdir -p ~/.vim/autoload
curl -fLo ~/.vim/autoload/plug.vim \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Clone rbenv and plugins
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/maljub01/rbenv-bundle-exec.git ~/.rbenv/plugins/rbenv-bundle-exec
git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash

# Set gem to skip documentation when installing new gems
echo 'gem: --no-ri --no-rdoc' >> ~/.gemrc

# Show help if `.rbenv` is not in the path:
if [ ! $(which rbenv) ]; then
  echo "
Seems you still have not added 'rbenv' to the load path:

# ~/.bash_profile:

export RBENV_ROOT=\"\${HOME}/.rbenv\"

if [ -d \"\${RBENV_ROOT}\" ]; then
  export PATH=\"\${RBENV_ROOT}/bin:\${PATH}\"
  eval \"\$(rbenv init -)\"
fi
"
fi


