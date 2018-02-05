#!/usr/bin/env bash

# Make sure brew and cask is available
source ./brew.sh

# Install data stores
brew install mysql
brew install postgresql
#brew install mongo
#brew install redis
#brew install elasticsearch

# Install mysql workbench
# Install Cask
brew install caskroom/cask/brew-cask
brew cask install --appdir="/Applications" mysqlworkbench
brew cask install --appdir="/Applications" sequel-pro
brew cask install postico
