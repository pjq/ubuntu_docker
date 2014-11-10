ubuntu_docker
=============

A Dockerfile for Ubuntu practice

Remove all the containers
============
```
docker rm `docker ps -a|cut -d " " -f1|grep -v "CONTAINER"`
```
Build the images according to the Dockerfile
===========
```
docker build -t="ubuntu:pjq_base" .
```

Fire a container based on your fresh images
===========
```
docker run -i -t ubuntu:pjq_base /bin/bash
```
