#!/bin/bash

# Check if the container exists
if [ "$(docker ps -a -q --filter ancestor=final_project)" ]; then
  # Stop and delete the container
  docker stop $(docker ps -a -q --filter ancestor=final_project)
  docker rm $(docker ps -a -q --filter ancestor=final_project)
fi

# Check if the image exists
if [ "$(docker images -q final_project)" ]; then
  # Delete the image
  docker rmi $(docker images -a -q --filter=reference='final_project')
fi