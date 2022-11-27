# pull image dari docker
docker pull mongo

# create container with environtment variables
docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=admin --env MONGO_INITDB_ROOT_PASSWORD=P@ssw0rd mongo:latest

# checking container
docker ls -a

