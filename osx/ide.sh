#!/usr/bin/env bash

# Make sure brew and cask is available
source ./brew.sh

# Misc casks
brew cask install --appdir="~/Applications" sublime-text
brew cask install --appdir="~/Applications" intellij-idea
brew cask install --appdir="~/Applications" atom
brew cask install --appdir="~/Applications" rstudio
brew cask install --appdir="~/Applications" postman
brew cask install --appdir="~/Applications" iterm2

# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

###############################################################################
# Sublime Text                                                                #
###############################################################################

# Install Sublime Text settings
cp -r init/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text*/Packages/User/Preferences.sublime-settings 2> /dev/null
