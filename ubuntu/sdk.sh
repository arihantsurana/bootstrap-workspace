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
sudo groupadd docker
sudo usermod -aG docker $USER
sudo docker run hello-world
chmod +x /usr/local/bin/docker-compose

echo "Install minikube"
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube
sudo cp minikube /usr/local/bin && rm minikube
sudo apt-get update && sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

