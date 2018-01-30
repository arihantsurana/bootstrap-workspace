#!/usr/bin/env bash

# Make sure brew and cask is available
source ./brew.sh

# Development tool casks
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" vagrant

# Install Docker, which requires virtualbox
brew install docker
brew install boot2docker
brew install kubectl
brew install minikube
brew install kompose
