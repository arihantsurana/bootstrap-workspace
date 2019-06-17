echo "Install google cloud"
wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-234.0.0-linux-x86_64.tar.gz -P ~/Downloads/
sudo tar xf ~/Downloads/google-cloud-sdk-234.0.0-linux-x86_64.tar.gz -C /opt/
sudo /opt/google-cloud-sdk/install.sh
sudo /opt/google-cloud-sdk/bin/gcloud init

echo "install aws cli"
sudo apt install awscli 
aws configure

