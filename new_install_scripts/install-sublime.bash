#!/bin/bash

# Download Sublime
wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2%20x64.tar.bz2
tar xf Sublime\ Text\ 2.0.2\ x64.tar.bz2

# Setup Sublime
mkdir -p ~/bin
mv Sublime\ Text\ 2 /opt/sublime2
sudo ln -s /opt/sublime2/sublime_text /usr/bin/sublime
sudo cp sublime.desktop /usr/share/applications/

# Clean up
rm Sublime\ Text\ 2.0.2\ x64.tar.bz2

