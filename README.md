# Docker MakeFile

## Set up

First download and install [Docker Toolbox](https://www.docker.com/products/docker-toolbox).
Create a github token with repo scope [here](https://github.com/settings/tokens) then place the token [here](https://github.com/narcisoguillen/docker-dev-jobs/blob/master/makefile#L2).

## Install

     make install

## Start

Start services

     make start

## Update

If you need to update you local docker images with lates github code just do. This will NOT re install everything, it will just fetch latest changes and re install dependencies.

     make update

## Update only 1 service

Update a single service sending `s` argument

     make only s=idp

## Stop

Stop docker

     make stop

## See the logs

     make logs
