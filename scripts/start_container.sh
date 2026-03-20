#!/bin/bash
set -e

# Pull the latest image
docker pull docker push vamshikrishnasiribommala/simple-python-flask-app:tagname
# Run with a FIXED NAME so we can find it next time
docker run -d -p 5000:5000 docker push vamshikrishnasiribommala/simple-python-flask-app:tagname
