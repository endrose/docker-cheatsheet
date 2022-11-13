## menampilkan container
docker container la -a

## membuat container
docker container create --name contohredis redis:latest


## menjalankan container
docker container start containerid/namacontainer
docker container start contohredis


## menstrop container
docker container stop contohredis


## menghapus container
docker container rm contohredis
