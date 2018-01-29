#!/usr/bin/env bash

function runDots() {
    # Ask for the administrator password upfront
    sudo -v
    
    # Keep-alive: update existing `sudo` time stamp until the script has finished
    while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

    # Run the osxprep.sh Script
    echo ""
    echo "------------------------------"
    echo "Updating OSX and installing Xcode command line tools"
    echo "------------------------------"
    echo ""
    ./osxprep.sh

    # Run the brew.sh Script
    # For a full listing of installed formulae and apps, refer to
    # the commented brew.sh source file directly and tweak it to
    # suit your needs.
    echo ""
    echo "------------------------------"
    echo "Installing Homebrew along with some common formulae and apps."
    echo "This might awhile to complete, as some formulae need to be installed from source."
    echo "------------------------------"
    echo ""
    ./brew.sh

    # Run the osx.sh Script
    # I strongly suggest you read through the commented osx.sh
    # source file and tweak any settings based on your personal
    # preferences. The script defaults are intended for you to
    # customize. For example, if you are not running an SSD you
    # might want to change some of the settings listed in the
    # SSD section.
    echo ""
    echo "------------------------------"
    echo "Setting sensible OSX defaults."
    echo "------------------------------"
    echo ""
    ./osx.sh
    
    # Run the pydata.sh Script
    echo "------------------------------"
    echo "Setting up Python data development environment."
    echo "------------------------------"
    echo ""
    ./pydata.sh

    # Run the aws.sh Script
    echo "------------------------------"
    echo "Setting up AWS development environment."
    echo "------------------------------"
    echo ""
    ./aws.sh

    # Run the datastores.sh Script
    echo "------------------------------"
    echo "Setting up data stores."
    echo "------------------------------"
    echo ""
    ./datastores.sh

    # Setup terminal with fancy fints
    echo "------------------------------"
    echo "Setting up terminal."
    echo "------------------------------"
    echo ""
    ./terminal.sh


    echo "------------------------------"
    echo "Completed running .dots, restart your computer to ensure all updates take effect"
    echo "------------------------------"
}

read -p "This script may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
    runDots $@
fi;

unset runDots;