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
apt-get install -y python3-pip
pip3 install httpie

# Node Dev
curl -sL https://deb.nodesource.com/setup_lts.x | bash -
apt-get install -y nodejs
npm install -g nodemon
npm install -g yarn
