## exec container
docker container exec -i -t contohredis /bin/bash


## membuat container dengan port forwading
docker container create --name contohn nginx (namacontainer) --publish 8080:80 nginx:latest 