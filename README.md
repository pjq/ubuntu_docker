Ubuntu Dockerfile
=============
A Dockerfile for Ubuntu practice

A bleeding fresh ubuntu Dockerfile, good start to build your own Docker images.


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

What I did in the Dockerfile
===========
```
RUN sed  -i 's/security.ubuntu.com/mirrors.163.com/g'   /etc/apt/sources.list
RUN sed  -i 's/us.archive.ubuntu.com/mirrors.163.com/g'  /etc/apt/sources.list
RUN sed  -i 's/archive.ubuntu.com/mirrors.163.com/g'  /etc/apt/sources.list
RUN apt-get update
RUN echo yes|apt-get install git
RUN echo yes|apt-get install subversion
RUN echo yes|apt-get install vim
RUN echo yes|apt-get install wget
RUN wget https://raw.githubusercontent.com/pjq/config/master/.vimrc -O ~/.vimrc 
```

More details
===========
  - http://pjq.me/wiki/doku.php?id=linux:docker
  - http://yeasy.gitbooks.io/docker_practice/
  - http://boot2docker.io/
  - https://hub.docker.com/
  - https://docker.cn/
  - http://www.dockerpool.com/

