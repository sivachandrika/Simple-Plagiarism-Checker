#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull sivachandrika/simple-plagiarism-checker-app

# Run the Docker image as a container
docker run -d -p 5000:5000 sivachandrika/simple-plagiarism-checker-app
