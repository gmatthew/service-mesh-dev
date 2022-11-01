#!/bin/bash

# install minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# start minikube
minikube start

echo 'alias kubectl="minikube kubectl --"' >> ~/.bashrc
source ~/.bashrc
