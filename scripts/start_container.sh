#!/bin/bash
set -e

# Pull the latest image from Docker Hub
docker pull vamshikrishnasiribommala/simple-python-flask-app:latest

# Run the Docker image as a container on port 5000
docker run -d -p 5000:5000 --name flask-app vamshikrishnasiribommala/simple-python-flask-app:latest
