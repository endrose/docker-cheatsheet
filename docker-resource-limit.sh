# membuat container dengan resource limit
docker container create --name smallsnginx --memory 100m --cpus 0.5 --publish 8081:80 nginx:latest