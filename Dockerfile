# Create a docker image and container for any jenkins application and then upload it to my github.

FROM jenkins/jenkins:lts-jdk17 

WORKDIR /app

COPY . .
