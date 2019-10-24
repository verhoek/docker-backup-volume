#!/bin/bash

BACKUP_DIR=$(pwd)/$1

mkdir $BACKUP_DIR 2>/dev/null

for volume in $(docker volume ls --format={{.Name}}); do
  bash ./backup-volume.sh $volume $BACKUP_DIR
done
