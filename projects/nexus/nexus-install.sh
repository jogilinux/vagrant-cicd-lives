#!/bin/bash

## create volume for nexus data
$ docker volume create --name nexus-data


## run nexus container port 8081
$ docker run -d -p 8081:8081 --name nexus -v nexus-data:/nexus-data sonatype/nexus3