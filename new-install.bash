#!/bin/bash

apt-get update -y

# General Dev
apt-get install -y ack-grep
apt-get install -y astyle
apt-get install -y p7zip-full

# C++ Dev
apt-get install -y g++
apt-get install -y clang
apt-get install -y valgrind

# Python Dev
apt-get install -y python-pip
pip install httpie

# Ruby Dev
apt-get install -y ruby-full build-essential zlib1g-dev
gem install bundler
gem install jekyll

# Node Dev
apt-get install -y nodejs
apt-get install -y npm
npm install -g pm2

# Node Dev - yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
apt-get update
apt-get install yarn

