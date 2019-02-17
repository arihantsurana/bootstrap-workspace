echo "install jdk"
sudo apt update
java -version
sudo apt install openjdk-11-jre-headless

echo "install python"
sudo apt update
sudo apt install python3
sudo apt install python3-pip


echo "install docker"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
curl -fsSL https://get.docker.com -o get-docker.sh
./get-docker.sh


