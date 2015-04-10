#!/bin/bash

sudo apt-get install -y ruby
\curl -sSL https://get.rvm.io | bash -s stable

rvm get stable --ruby
source /home/stephen/.rvm/scripts/rvm

gem install rails
gem install jekyll
