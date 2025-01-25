#!/bin/bash
echo "Deploying frontend Docker container..."

# Stop and remove the existing container if it's running
docker stop frontend-container || true
docker rm frontend-container || true

# Pull the latest Docker image from Docker Hub
docker pull 7276829907/frontend-image:latest

# Run the Docker container with the required port
docker run -d -p 80:80 --name frontend-container 7276829907/frontend-image:latest

echo "Frontend Docker container is up and running!"
