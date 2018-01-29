# bootstrap-workspace
A repository to contain infra as code scripts for my Mac and Windows machines setup for personal use.

# Windows
I am experimenting with Chocolatey as the package manager : https://chocolatey.org .
`./windows/bootstrap.bat` contains the initial setup for windows to be prepped, and choclatey to be ready to execute the install script.

# Mac OSX
All installation will be handled vis homebrew.
`./osx/bootstrap.sh` contains the initial setup for osx to be prepped, and homebrew to be ready to execute the install script.
To run entire installation run `bash ./osx/bootstrap.sh`
