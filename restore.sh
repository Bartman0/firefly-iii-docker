#!/bin/bash

# run in firefly-iii-docker directory
# set date_string to the backup that's to be restored
date_string="2024-04-07"

#tar -zxvf ~/backup/backup-config-${date_string}.tar.gz
docker run -it --rm -v "firefly-iii-docker_firefly_iii_db:/db" -v "$HOME/backup:/backup" ubuntu tar -zxvf /backup/backup-db-${date_string}.tar.gz -C /db --strip 1
