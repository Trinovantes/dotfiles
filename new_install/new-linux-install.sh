#!/bin/bash

apt-get update -y

# General dev
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

# Node dev
apt-get install -y npm
npm install less
npm install coffee-script

# Flux
add-apt-repository ppa:kilian/f.lux
apt-get update
apt-get install -y fluxgui
