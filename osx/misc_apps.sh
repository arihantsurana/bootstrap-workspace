#!/usr/bin/env bash

# Make sure brew and cask is available
source ./brew.sh

# Misc casks
brew cask install --appdir="~/Applications" slack
brew cask install --appdir="~/Applications" google-backup-and-sync
brew cask install --appdir="~/Applications" google-drive-file-stream
brew cask install --appdir="~/Applications" vlc
brew cask install --appdir="~/Applications" keybase
brew cask install --appdir="~/Applications" enpass
