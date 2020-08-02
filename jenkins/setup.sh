#!/bin/bash

sudo yum update -y
sudo amazon-linux-extras install epel
sudo amazon-linux-extras install python3
python3 --version

sudo mv /usr/bin/aws /usr/bin/aws1
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install -i /opt/aws-cli -b /usr/bin

aws --version

curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mv ./kubectl /usr/bin/kubectl

which kubectl
kubectl version --client
