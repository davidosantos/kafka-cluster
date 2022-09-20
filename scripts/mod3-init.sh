#!/bin/bash

# Nuke all running Docker containers
docker rm -f $(docker ps -aq) 1>/dev/null 2>&1
docker system prune -f --volumes 1>/dev/null

# Restore Module 3 Activity docker-compose.yml
cp /home/training/sr/lab-initial-files/mod3-docker-compose.yml /home/training/sr/docker-compose.yml
