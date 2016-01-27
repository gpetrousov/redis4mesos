#!/bin/bash   

# MAINTAINER: Ioannis Petrousov
# EMAIL: petrousov@gmail.com
# DATE: 27/01/2016


read MASTER
read INSTANCES

if [ -z "$MASTER" ]; then
    echo "Need to set MASTER"
    exit 1
fi

CURL="curl -X PUT -H 'Content-Type: application/json' $MASTER:8080/v2/apps/$APP -d '{ \"instances\" : $INSTANCES}'"
echo $CURL
eval $CURL
