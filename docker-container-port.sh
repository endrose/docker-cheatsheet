# pull image nginx versi latest
docker image pull nginx:latest


# create container dengan port forwarding
docker container create --name contohnginx --publish 8080:80 nginx:latest

# running container
docker container start contohnginx

