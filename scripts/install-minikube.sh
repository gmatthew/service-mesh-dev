#!/bin/bash

echo "Installing Minikube..."
sudo apt-get install conntrack -y
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# start minikube
sudo minikube start --force
kubectl cluster-info

echo 'alias kubectl="minikube kubectl --"' >> ~/.bashrc
alias kubectl="minikube kubectl --"
