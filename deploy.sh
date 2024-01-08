#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

echo "Re-assigning permissions for ~/multiorb/cunjur_public"
sudo chmod -R 777 ./

echo "Deploying using Docker Compose"
docker compose -f ./docker-compose.yml up -d --build

echo "Pruning images"
docker image prune -f

# End of script