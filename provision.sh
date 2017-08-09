#!/bin/bash

# Install Docker
apt install -y docker.io

# Pull Jenkins Docker image
docker pull jenkins/jenkins:lts

# Create volume for Artifactory data
docker volume create --name jenkins_home

# Create Docker container
docker run --name jenkins_master -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts

