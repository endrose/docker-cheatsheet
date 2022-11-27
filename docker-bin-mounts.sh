# membuat container dengan mounting
docker container create --name mongodata --publish 27018:27017 --mount="type=bind,source=/home/endrose/workspace/docker/practice_docker/mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=admin --env MONGO_INITDB_ROOT_PASSWORD=P@ssw0rd mongo:latest
