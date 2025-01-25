#!/bin/bash

# Update the system and install Docker
echo "Installing Docker..."
sudo yum update -y
sudo yum install -y docker

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Verify Docker installation
docker --version


