# Docker MakeFile

## Set up

First download and install [Docker Toolbox](https://www.docker.com/products/docker-toolbox).
Create a guthub token with repo scope [here](https://www.docker.com/products/docker-toolbox) then place the token [here](https://github.com/narcisoguillen/docker-dev-jobs/blob/master/makefile#L2).

## Install

     make install

## Start

Start services

     make start

## Update

If you need to update you local docker images with lates github code just do.

     make update

## Stop

Stop docker

     make stop

## See the logs

     make logs
