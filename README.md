# About
Standalone Redis container to deploy on Mesos cluster with Marathon and route with HAProxy. On container deployment, a bootstrap script is executed and wraps the redis server script. Base operating system is Centos.

# Usage 
1. Build the image

        00_build_image.sh

2. Deploy on cluster

        01_deploy_on_mesos.sh

# Scaling
...pending testing on free time

# Scripts
I have included several scripts which help deployment and management of the container using the Marathon API.
