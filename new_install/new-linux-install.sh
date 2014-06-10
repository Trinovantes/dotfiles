#!/bin/bash

apt-get update -y

# General dev
apt-get install -y git
apt-get install -y xclip
apt-get install -y xzdec
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

# Setup dotfiles
cd ~/
git clone https://github.com/Trinovantes/dotfiles.git
cd ~/dotfiles
sh install.sh

# Setup vim
apt-get install -y vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Setup sublime
wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2%20x64.tar.bz2
tar xf Sublime\ Text\ 2.0.2\ x64.tar.bz2
mkdir -p ~/bin
mv Sublime\ Text\ 2 ~/bin/
sudo ln -s /opt/Sublime\ Text\ 2/sublime_text /usr/bin/sublime
sudo cp sublime.desktop /usr/share/applications/
