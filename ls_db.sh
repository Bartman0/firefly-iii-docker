#!/bin/bash

docker run -it --rm -v "firefly-iii-docker_firefly_iii_db:/db" -v "$HOME/backup:/backup" ubuntu ls -la /db
