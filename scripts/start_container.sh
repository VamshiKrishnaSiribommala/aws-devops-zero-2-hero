#!/bin/bash
set -e

echo "Stopping old container..."
docker stop flask-app || true
docker rm flask-app || true

echo "Pulling latest image..."
docker pull vamshikrishnasiribommala/simple-python-flask-app:latest

echo "Running container..."
docker run -d -p 5000:5000 --name flask-app vamshikrishnasiribommala/simple-python-flask-app:latest

echo "Deployment successful 🚀"
