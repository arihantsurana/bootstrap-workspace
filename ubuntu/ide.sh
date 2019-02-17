# Install the IDEs

echo "installing sublime"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https 
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list 
sudo apt-get update 
sudo apt-get install sublime-text

# echo "install intelliJ idea"
# wget https://download.jetbrains.com/idea/ideaIC-2018.3.4-no-jdk.tar.gz -P ~/Downloads/
# sudo tar xf ~/Downloads/ideaIC-2018.3.4-no-jdk.tar.gz -C /opt/
# sudo /opt/idea-IC-183.5429.30/bin/idea.sh

echo "install guake"
sudo apt-get install guake 




