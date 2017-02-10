#!/usr/bin/env bash

# install docker-compose
curl -L https://github.com/docker/compose/releases/download/1.8.0/run.sh > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version

# copy sample app
mkdir -p /home/apps
cp -rf ./node/sample /home/apps/sample
