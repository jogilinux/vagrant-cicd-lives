#!/bin/bash

## create dockerfile in build jenkins image

sudo docker build -t jenkins-tecpingu-blueocean:2.462.2-1 .

## create jenkins container 

sudo docker run \
  --name jenkins-blueocean \
  --restart=on-failure \
  --detach \
  --network jenkins \
  --env DOCKER_HOST=tcp://docker:2376 \
  --publish 8080:8080 \
  --publish 50000:50000 \
  --volume jenkins-data:/var/jenkins_home \
  jenkins-tecpingu-blueocean:2.462.2-1