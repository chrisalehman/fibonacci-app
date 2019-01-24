#!/bin/bash

docker build -f Dockerfile.dev -t chrisalehman/fibonacci-app-client .
docker run -p 3000:3000 -v /opt/app/node_modules -v $(pwd):/opt/app -d chrisalehman/fibonacci-app-client
