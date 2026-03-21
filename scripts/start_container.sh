#!/bin/bash
set -e

# Pull the latest image
docker pull vamshikrishnasiribommala/simple-python-flask-app:latest

# Stop and remove old container if it exists
docker stop flask-app || true
docker rm flask-app || true

# Start the new container
docker run -d -p 5000:5000 --name flask-app vamshikrishnasiribommala/simple-python-flask-app:latest
