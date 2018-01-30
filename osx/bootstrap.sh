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
    echo ""
    echo "------------------------------"
    echo "Installing Homebrew along with some common formulae and apps."
    echo "This might awhile to complete, as some formulae need to be installed from source."
    echo "------------------------------"
    echo ""
    ./brew.sh

    # Setup core_brews
    echo "------------------------------"
    echo "Setting up core brews."
    echo "------------------------------"
    echo ""
    ./core_brews.sh

    # Run the osx.sh Script
    echo ""
    echo "------------------------------"
    echo "Setting sensible OSX defaults."
    echo "------------------------------"
    echo ""
    ./osx.sh
    
    # Setup virtualization tools
    echo "------------------------------"
    echo "Setting up virtualization tools."
    echo "------------------------------"
    echo ""
    ./virtual.sh
    
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

    # Setup terminal with fancy fonts
    echo "------------------------------"
    echo "Setting up terminal."
    echo "------------------------------"
    echo ""
    ./terminal.sh

    # Setup chrome
    echo "------------------------------"
    echo "Setting up google Chrome."
    echo "------------------------------"
    echo ""
    ./google_chrome.sh

    # Setup spectacle
    echo "------------------------------"
    echo "Setting up google spectacle."
    echo "------------------------------"
    echo ""
    ./spectacle.sh

    # Setup ide
    echo "------------------------------"
    echo "Setting up various ide."
    echo "------------------------------"
    echo ""
    ./ide.sh

    # Setup misc apps
    echo "------------------------------"
    echo "Setting up misc apps."
    echo "------------------------------"
    echo ""
    ./misc_apps.sh

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