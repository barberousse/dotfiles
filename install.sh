#! /usr/bin/env bash

if [ ! -x curl ];
then
	sudo apt-get install curl;
fi

if [ ! -x git ];
then
	sudo apt-add-repository -y ppa:git-core/ppa;
	sudo apt-get update && sudo apt-get install git;
fi

# vim-plug plugin manager for vim
mkdir -p ~/.vim/autoload
curl -fLo ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Node binaries
curl -sL https://deb.nodesource.com/setup_iojs_1.x | sudo bash -

# Ruby binaries
sudo apt-add-repository -y ppa:brightbox/ruby-ng

sudo apt-get update
sudo apt-get install -y ruby2.2 nodejs

