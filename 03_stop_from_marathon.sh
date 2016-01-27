#!/bin/bash   

# MAINTAINER: Ioannis Petrousov
# EMAIL: petrousov@gmail.com
# DATE: 27/01/2016

# This script will delete redis app from cluster

read MASTER
APP="redis.marathon"

if [ -z "$MASTER" ]; then
    echo "Need to set MASTER"
    exit 1
fi

CURL="curl -X DELETE $MASTER:8080/v2/apps/$APP | python -m json.tool"
echo $CURL
eval $CURL
