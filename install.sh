#! /usr/bin/env bash

mkdir -p ~/.vim/autoload
curl -fLo ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
curl https://raw.githubusercontent.com/creationix/nvm/v0.24.0/install.sh | bash
git config --global credential.helper 'cache --timeout 3600'
git config --global user.name "Benoît Barberousse"
git config --global user.email "benoit@skillsesh.com"
