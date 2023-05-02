#!/bin/bash
docker --version
docker build -t jenkins:v1 -f Dockerfile.Jenkins .
docker build -t nexus:v1 -f Dockerfile.Nexus .
docker compose version
docker compose -f docker-compose.yml up -d
