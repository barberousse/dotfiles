#! /usr/bin/env bash

# Configure git
git config --global user.name "Benoît Barberousse"
git config --global user.email "benoit.barberousse@gmail.com"

# Set the fish directory
mkdir -p ~/.config/fish
sudo apt-get install -y fish

# vim-plug plugin manager for vim
mkdir -p ~/.vim/autoload
curl -fLo ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.3/install.sh | bash
git clone git://github.com/passcod/nvm-fish-wrapper.git ~/.config/fish/nvm-wrapper

# rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
git clone https://github.com/maljub01/rbenv-bundle-exec.git ~/.rbenv/plugins/rbenv-bundle-exec
