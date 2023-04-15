#!/bin/bash
docker run -d --name site2 -p 8081:80 -v $(pwd)/index.html:/var/www/html/index.php hometask-image
