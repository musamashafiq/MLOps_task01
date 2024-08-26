#!/bin/bash

# Step 1: Build Docker images
echo "Building Docker images..."
docker build -t backend1 -f Dockerfile.backend1 .
docker build -t backend2 -f Dockerfile.backend2 .
docker build -t load_balancer -f Dockerfile.load_balancer .
docker build -t requester -f Dockerfile.requester .

# Step 2: Run Docker Compose
echo "Running Docker Compose..."
docker-compose up -d

# Step 3: Show running containers
echo "Showing running containers..."
docker ps

echo "All services are up and running."
