#!/bin/sh

echo "Building Skills"

export arch=$(uname -m)

export eTAG="rasp"

export dockerfile="Dockerfile.armhf"

echo Building Skill s8sg/skill-switch-dummy:$eTAG
if [ "$arch" != "armv7l" ]
then
    export dockerfile="Dockerfile.dummy"
    export $eTAG="dummy"
fi

docker build -t s8sg/skill-switch:$eTAG -f ./switch/$dockerfile ./switch/$eTag/ --no-cache
