#!/bin/bash

sudo softwareupdate -i -a
brew update
brew upgrade
brew cleanup
npm install npm -g
npm update -g
sudo yes | gem update --system
sudo yes | gem update
sudo yes | gem cleanup
