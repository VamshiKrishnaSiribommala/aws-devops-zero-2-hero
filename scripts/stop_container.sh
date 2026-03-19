#!/bin/bash
set -e

# 1. Try to stop the container by name
docker stop flask-app || true
docker rm flask-app || true

# 2. Extra Safety: Kill anything else sitting on port 5000 (The "Ghost Hunter")
container_id=$(docker ps -q --filter "ancestor=vamshikrishnasiribommala/simple-python-flask-app")
if [ ! -z "$container_id" ]; then
    docker stop $container_id
    docker rm $container_id
fi
