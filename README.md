Ubuntu Dockerfile
=============
A Dockerfile for Ubuntu practice

A bleeding fresh ubuntu Dockerfile for 18.04, good start to build your own Docker images.


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
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends apt-utils
RUN echo yes|apt-get install git
RUN echo yes|apt-get install vim
RUN echo yes|apt-get install wget htop nmap w3m
RUN wget https://raw.githubusercontent.com/pjq/config/master/.vimrc -O ~/.vimrc
```

Build and push to docker hub
===========
```
docker build -t="ubuntu:18.04" .
docker tag ubuntu:18.04 pengjianqing/ubuntu-docker
docker login
docker push pengjianqing/ubuntu-docker:latest
```

Commands List
===========
```
docker run -it pengjianqing/ubuntu-docker /bin/bash
docker ps -a
docker ps
docker attach cantainerid
```

More details
===========
  - http://pjq.me/wiki/doku.php?id=linux:docker
  - http://yeasy.gitbooks.io/docker_practice/
  - http://boot2docker.io/
  - https://hub.docker.com/
  - https://docker.cn/
  - http://www.dockerpool.com/

