#!/bin/bash

# Build the image using the Dockerfile
docker build -t final_project .

# Create a persistent volume
docker volume create my-django-app-data

# Start a container
docker run -d -p 8000:8000 -v my-django-app-data:/code --name devconnect final_project