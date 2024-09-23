#!/bin/bash

### create bridge network
sudo docker network create jenkins

### Create jenkins node
sudo docker run \
  --name jenkins-node-01 \
  --rm \
  --detach \
  --privileged \
  --network jenkins \
  --network-alias docker \
  --volume jenkins-data:/var/jenkins_home \
  --publish 2376:2376 \
  docker:dind \
  --storage-driver overlay2
