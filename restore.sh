#!/bin/bash

# run in firefly-iii-docker directory
# set the first argument to the backup that's to be restored
date_string=$1

# check if the date is valid
if [[ $date_string =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]; then
    #tar -zxvf ~/backup/backup-config-${date_string}.tar.gz
    echo "restoring backup $date_string"
    docker run -it --rm -v "firefly-iii-docker_firefly_iii_db:/db" -v "$HOME/backup:/backup" ubuntu tar -zxvf /backup/backup-db-${date_string}.tar.gz -C /db --strip 1
else
    echo "ERROR: no valid data was specified"
fi
