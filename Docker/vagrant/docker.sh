#!/bin/bash

# Install Docker
apt-get update && upgrade -y
apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release nfs-common
mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null  
  
apt-get update
apt-get install -y docker-ce docker-ce-cli docker-compose-plugin
