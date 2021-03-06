# About

Standalone Redis Docker container to deploy on Mesos cluster with Marathon and route with HAProxy.
On container deployment, a bootstrap shell script is executed and wraps the redis server script. Base operating system is **Centos**. 
This project was featured on Redis weekly http://redisweekly.com/archive/129.html

## Quickstart

To quickly deploy the container on your Mesos or DC/OS cluster, run the deploy.sh script

## Why another Redis container???

Searching the web, I could not find a single solution which would just build and deploy a Redis container and would **work**. I needed a container which I could deploy on a multi-node Mesos cluster and route with HAproxy. If this is what you need, then you have found your salvation.


## Docker hub

https://hub.docker.com/r/gpetr/redis4mesos/

## Usage 

- I have created a few scripts to simplify the build and deployment of the image.
If you have a single box without in-house registry, executing the following scripts is enough to build and deploy.

1. Build the image

        build.sh

2. Deploy on cluster

        deploy.sh

- If you have an in-house registry, change the 'image' instruction in files/redis_marthon.json to point to your internal registry.


## Networking

http://redis.io/topics/cluster-tutorial

> Currently Redis Cluster does not support NATted environments and in general environments where IP addresses or TCP ports are remapped.

For this reason I did not include portmapping in the Marathon JSON files.
You can still route traffic using HAproxy to the running instances using the data port.

## Scaling

Scaling with Marathon is possible if you want to have many Redis instances and use them for different purpose.
Instances are not interconnected and do not have master-slave relationship.

## Redis configuration

Redis configuration parameters are set using the files/bootstrap.sh shell script.
Set Redis data port from files/redis_marathon.json to whatever you want, default is 20000.
