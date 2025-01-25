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

# Extract the build.zip file
echo "Extracting the build.zip file..."
mkdir -p /home/ec2-user/build
unzip /home/ec2-user/build/build.zip -d /home/ec2-user/build/

# Verify the files were extracted
echo "Files extracted:"
ls -l /home/ec2-user/build/

# Add any additional steps if required, such as setting up Docker containers
