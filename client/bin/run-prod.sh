#!/bin/bash

docker build -f Dockerfile -t chrisalehman/fibonacci-app .
docker run -p 8080:8080 -d chrisalehman/fibonacci-app
