#!/bin/bash
echo "Deploying frontend Docker container..."

# Load the Docker image from tarball
docker load < /home/ec2-user/frontend_image.tar

# Run the Docker container with the required port
docker run -d -p 80:80 --name frontend-container frontend-image

echo "Frontend Docker container is up and running!"
