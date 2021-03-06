#!/usr/bin/env bash

## Complete the following steps to get Docker running locally
version=$1
# Step 1:
# Build image and add a descriptive tag
docker build -t app:${version} .

# Step 2: 
# List docker images
docker image ls
# Step 3: 
# Run flask app

docker run -p 8001:8081 phalligan/kubernetes-ml-app:${version}
