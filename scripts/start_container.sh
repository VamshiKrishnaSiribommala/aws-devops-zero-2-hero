#!/bin/bash
set -e

# Pull the latest image
docker pull vamshikrishnasiribommala/simple-python-flask-app:latest

# Run with a FIXED NAME so we can find it next time
docker run -d -p 5000:5000 --name flask-app vamshikrishnasiribommala/simple-python-flask-app:latest
