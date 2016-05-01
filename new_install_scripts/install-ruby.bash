#!/bin/bash

sudo apt-get install -y ruby
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable

source /home/stephen/.rvm/scripts/rvm
sudo rvm get stable --ruby
sudo rvm get stable --rails

gem install jekyll

