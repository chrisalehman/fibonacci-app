#!/bin/bash

docker build -f Dockerfile -t chrisalehman/fibonacci-app-client .
docker run -p 8080:3000 -d chrisalehman/fibonacci-app-client
