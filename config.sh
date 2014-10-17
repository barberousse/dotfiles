#!/bin/bash

# Verify Git is installed:
if [ ! $(which git) ]; then
  sudo apt-apt-repository -y ppa:chris-lea/node.js
  sudo apt-get update
  sudo apt-get install -y git tmux vim-nox nodejs redis-server \
    build-essential postgresql-9.3 postgrseql-contrib-9.3 libpq-dev
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

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

# Set gem to skip documentation when installing new gems
echo 'gem: --no-ri --no-rdoc' >> ~/.gemrc

# End with a warning
echo 'Now source .bashrc'


