#!/bin/bash

apt-get update -y

# Setup git
apt-get install -y git
apt-get install -y xclip 	# for copying ssh key to clipboard

# Setup dotfiles
cd ~/
git clone https://github.com/Trinovantes/dotfiles.git
cd ~/dotfiles
sh install.sh

# Setup vim
apt-get install -y vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# General dev
apt-get install -y yum
apt-get install -y curl
apt-get install -y ack-grep
apt-get install -y astyle

# C++ dev
apt-get install -y g++
apt-get install -y clang
apt-get install -y valgrind

# Flux
add-apt-repository ppa:kilian/f.lux
apt-get update
apt-get install -y fluxgui
