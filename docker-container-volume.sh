## membuat volume 
docker create volume mongondata

## checking 
docker volume ls 

## membuat container dengan volume 
docker container create --name mongodata --publish 27019:27017 --mount "type=volume,source=mongodata=/data/db" --env MONGO_INITDB_ROOT_USERNAME=admin --env MONGO_INITDB_ROOT_PASSWORD=P@ssw0rd mongo:latest

