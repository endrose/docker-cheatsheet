# membuat volume untuk restore
docker volume create mongorestore


# dengan 1 perintah

docker container run --rm --name ubunturestore --mount "type=bind,source=/home/endrose/workspace/docker/practice_docker/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"




docker container create --name mongorestore --publish 27020:27017 --mount "type=volume,source=mongodrestore=/data/db" --env MONGO_INITDB_ROOT_USERNAME=admin --env MONGO_INITDB_ROOT_PASSWORD=P@ssw0rd mongo:latest
