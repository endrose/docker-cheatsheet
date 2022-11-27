### VERSI MANUAL ###
## matikan container mongovolume
docker container stop mongovolume


## buat path backup
mkdir backup

## buat container backup
docker container create --name nginxbackup --mount "type=bind,source=/home/endrose/workspace/docker/practice_docker/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest
 
## jalankan container backup
docker container start nginxbackup

## eksekusi container
docker container exec -i -t nginxbackup /bin/bash

## backup dengan tar
tar cvf /backup/backup.tar.gz /data


## matikan container nginxbackup
docker container stop nginxbackup

## hapus container nginxbackup
docker container rm nginxbackup

## jalankan container volumenya
docker container start mongovolume


### VERSI SIMPLE DENGAN 1 SCRIPT ###

## mengambil image ubuntu
docker pull ubuntu:latest

## stop container volume mongo
docker container stop mongovolume

## menghapus dengan run
docker container run --rm --name ubuntubackup --mount "type=bind,source=/home/endrose/workspace/docker/practice_docker/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar cvf /backup/backup-lagi.tar.gz /data 
