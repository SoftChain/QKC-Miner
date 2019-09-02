#!/usr/bash

echo Updating System
sudo apt-get install update
sudo apt-get update

echo Installing docker
sudo apt install docker.io

echo Pulling Shell Script
git clone https://github.com/HangyuYe/QKC-Miner.git
cd QKC-Miner

echo Pulling image
sudo docker pull quarkchaindocker/pyquarkchain:mainnet1.1.3
sudo docker run -it --name cluster --network host quarkchaindocker/pyquarkchain:mainnet1.1.3
