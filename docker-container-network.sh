
## membuat network agar container lain bisa saling komunikasi
docker network create --driver bridge mongonetworkgit status

## membuat container mongodb dengan network
docker container create --name mongodb mongonetwork --env MONGO_INITDB_ROOT_USERNAME=admin --env MONGO_INITDB_ROOT_PASSWORD=P@ssword  mongo:latest

## pull image mongo express latest
docker image pull mongo-express:latest

## membuat container dengan network menyertakan port, environtment 
docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL: mongodb://admin:P@ssw0rd@mongo:27017/ mongo-express:latest

## menjalankan container mongodb
docker container start mongodb

## menjalankan container mongoexpress
docker container start mongodbexpres



## apabila menghapus container ke network
docker network disconnect mongonetwork mongodb

## apabila menambahkan container dengan ke network
docker network connect mongonetwork mongodb 