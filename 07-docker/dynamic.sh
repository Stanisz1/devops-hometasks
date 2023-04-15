#!/bin/bash
docker build -t hometask-image .
docker run -d --name site1 -p 8080:80 hometask-image