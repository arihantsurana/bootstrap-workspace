#!/usr/bin/env bash

# Make sure brew and cask is available
source ./brew.sh

brew cask install --appdir="/Applications" google-cloud-sdk

# Setup your credentials
gcloud init
