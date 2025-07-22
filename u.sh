#!/bin/bash

docker --version
docker compose version

echo "Docker and Docker Compose updated."

mkdir -p data
mkdir -p postgres

docker compose down --volumes --remove-orphans

docker compose up -d --build

echo "Docker Compose services rebuilt and started."
