#!/bin/bash

files_to_backup=(.env .db.env .importer.env docker-compose.yml docker-compose-importer.yml import_config_abn_amro.json)
date_string=$(date "+%Y-%m-%d")

tar -zcvf ~/backup/backup-config-${date_string}.tar.gz ${files_to_backup[*]}
podman run -it --rm -v "firefly-iii-docker_firefly_iii_db:/db" -v "$HOME/backup:/backup" ubuntu tar -zcvf /backup/backup-db-${date_string}.tar.gz /db

