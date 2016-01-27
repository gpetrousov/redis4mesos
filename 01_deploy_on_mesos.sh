#!/bin/bash   

# MAINTAINER: Ioannis Petrousov
# EMAIL: petrousov@gmail.com
# DATE: 27/01/2016

# This script will launch a new redis task on mesos cluster.


read MASTER
JSON=`pwd`/files/redis_marathon.json

if [ -z "$MASTER" ]; then
    echo "Need to set MASTER"
    exit 1
fi


CURL="curl -X POST -H 'Content-Type: application/json' $MASTER:8080/v2/apps -d@$JSON"
echo $CURL
eval $CURL
