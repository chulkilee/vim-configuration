#!/bin/sh

# Ubuntu:
# sudo apt-get install build-essential ruby-dev vim-nox

cd bundle/Command-T/ruby/command-t
ruby extconf.rb
make
