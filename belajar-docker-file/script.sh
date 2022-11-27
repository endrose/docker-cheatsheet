# FROM instruction
docker build -t endrose/from /practice_docker/belajar-docker-file/from

# FROM instruction dengan progress dan tidak menggunakan chache yang sudah ada
docker build -t endrose/from /practice_docker/belajar-docker-file/from --progress=plain --no-chache

docker image -ls 

# RUN instruction
docker build -t endrose/run /practice_docker/belajar-docker-file/run

# RUN instruction dengan progress dan tidak menggunakan chache yang sudah ada
docker build -t endrose/run /practice_docker/belajar-docker-file/run --progress=plain --no-chache

# CMD instruction dengan progress dan tidak menggunakan chache yang sudah ada
docker build -t endrose/command /practice_docker/belajar-docker-file/command --progress=plain --no-chache

# melihat detail CMD yang sudah di build
docker image  inspect endrose/command

#=============================================================================================

# membuat container untuk menjalankan CMD
docker container create --name command endrose/command

# menjalankan CMD
docker container start command

# melihat log yang sudah di running
docker container logs command

#=============================================================================================

# Label instruction
docker build -t endrose/command /practice_docker/belajar-docker-file/label

# melihat detail label yang sudah di build
docker image inspect endrose/label

#=============================================================================================

# Add instruction
docker build -t endrose/add /practice_docker/belajar-docker-file/add

# membuat container untuk menjalankan Add
docker container create --name add endrose/add

# menjalankan Add
docker container start add

# melihat log yang sudah di running
docker container logs add

#=============================================================================================

# Copy instruction
docker build -t endrose/copy /practice_docker/belajar-docker-file/copy

# membuat container untuk menjalankan copy
docker container create --name copy endrose/copy

# menjalakan copy
docker container start copy

# melihat log yang sudah di running
docker container logs copy

#=============================================================================================

# Ignore instruction
docker build -t endrose/ignore /practice_docker/belajar-docker-file/ignore

# membuat container ignore untuk di jalankan
docker container create --name ignore endrose/ignore

# menjalankan container ignore
docker container start ignore 

# melhat log yang sudah di running
docker container logs ignore

#=============================================================================================

# Expose instruction
docker built -t endrose/expose /practice_docker/belajar-docker-file/expose

# melihat detail image 
docker image inspect endrose/expose

# membuat container expose untuk di jalankan
docker container create --name expose -p 8080:8080 endrose/expose

# menjalankan container expose
docker container start expose

# melihat log yang sudah di running
docker container logs expose


#=============================================================================================

# ENV instruction
docker build practice_docker/belajar-docker-file/env

# melihat detail env
docker image inspect practice_docker/belajar-docker-file/env

# sebelum merubah port container
docker container create --name env  --env APP_PORT=8080 -p 8080:8080 endrose/env
# merubah port  container untuk di jalankan
docker container create --name env  --env APP_PORT=9090 -p 9090:9090 endrose/env

# menjalankan container env
docker container start env

# melihat log yang sudah di running
docker container logs env


#=============================================================================================

# VOLUME instruction
docker build -t practice_docker/belajar-docker-file/volume

# melihat detail volume
docker image practice_docker/belajar-docker-file/volume

# membuat container dengan port dan volume
docker container --create volume --env APP_PORT=8080 -p 8080:8080 endrose/volume

# menjalankan container volume
docker container start volume

# melihat log yang sudah di running
docker container logs volume


# melihat detail volume
docker container inspect volume

# melihat apakah volume sudah masuk di local
docker volume ls 


#=============================================================================================

# WORKING DIRECTORY instruction
docker build -t practice_docker/belajar-docker-file/workdir

# membuat container
docker create --name workdir -p 8080:8080 practice_docker/belajar-docker-file/workdir

# menjalankan container WORKING DIRECTORY
docker container start workdir


# melihat detail log
docker image inspect workdir


# eksekusi container
docker container exec -i -t workdir /bin/sh
