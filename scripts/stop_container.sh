#!/bin/bash
set -e

# Stop and remove the container if it exists
docker stop flask-app || true
docker rm flask-app || true
