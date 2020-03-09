#!/bin/bash

apt-get update -y

# General dev
apt-get install -y vim
apt-get install -y git
apt-get install -y subversion
apt-get install -y xclip
apt-get install -y xzdec
apt-get install -y yum
apt-get install -y curl
apt-get install -y ack-grep
apt-get install -y astyle
apt-get install -y latexmk
apt-get install -y imagemagick
apt-get install -y ghostscript
apt-get install -y httrack
apt-get install -y p7zip-full
apt-get install -y gnupg2

# C++ dev
apt-get install -y g++
apt-get install -y clang
apt-get install -y valgrind

# Python dev
apt-get install -y python-pip
apt-get install -y python-mysqldb
pip install django
pip install peewee
pip install beautifulsoup4
pip install httpie
pip install tortilla

# Node dev
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
apt-get install -y nodejs
apt-get install -y npm
npm install -g less
npm install -g npx
npm install -g gulp
npm install -g jshint
npm install -g browserify
npm install -g mocha

