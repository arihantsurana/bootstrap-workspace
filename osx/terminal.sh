#!/usr/bin/env bash

# Make sure brew and cask is available
source ./brew.sh

# Install fonts from https://github.com/ryanoasis/nerd-fonts to allow GBT
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.2.0/BitstreamVeraSansMono.zip
unzip ./BitstreamVeraSansMono.zip
mv ./*.ttf /Library/Fonts

# Install GBT from https://github.com/jtyr/gbt
brew tap jtyr/repo
brew install gbt

# Configure your train
BASH_PROFILE_PATH=~/.bash_profile
echo $BASH_PROFILE_PATH
echo "" >> $BASH_PROFILE_PATH
echo "" >> $BASH_PROFILE_PATH
echo "# Setup GBT train for terminal" >> $BASH_PROFILE_PATH
echo "" >> $BASH_PROFILE_PATH
# Run $ brew info apache-spark to determine the Spark install location
echo "PS1='$(gbt $?)'" >> $BASH_PROFILE_PATH
echo "export GBT_CARS='Os, Dir, Git, Sign'" >> $BASH_PROFILE_PATH
echo "export GBT_CAR_SIGN_USER_TEXT=''" >> $BASH_PROFILE_PATH
echo "export GBT_RCARS='Time'" >> $BASH_PROFILE_PATH
echo "source /usr/local/Cellar/gbt/1.1.6_1/share/gbt/themes/square_brackets_multiline" >> $BASH_PROFILE_PATH
echo "" >> $BASH_PROFILE_PATH
source $BASH_PROFILE_PATH
