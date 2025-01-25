#!/bin/bash
echo "Restarting frontend Docker container..."

# Stop and remove any existing container
docker stop frontend-container
docker rm frontend-container

# Run the container again
docker run -d -p 80:80 --name frontend-container 7276829907/frontend-image:latest

echo "Frontend Docker container restarted!"
