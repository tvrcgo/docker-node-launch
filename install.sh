#!/usr/bin/env bash

# install docker-compose
curl -L https://github.com/docker/compose/releases/download/1.8.0/run.sh > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version

# copy sample app
mkdir -p /home/app
cp -rn ./node/sample /home/app/sample

# gitlab ci runner
mkdir -p /etc/docker/gitlab-runner
cp -n ./gitlab-ci-runner/config.toml /etc/docker/gitlab-runner/config.toml

# compose
docker-compose up --build -d
