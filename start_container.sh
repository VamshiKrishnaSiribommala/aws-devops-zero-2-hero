#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull vamshikrishnasiribommala/simple-python-flask-app

# Run the Docker container
docker run -d -p 5000:5000 vamshikrishnasiribommala/simple-python-flask-app