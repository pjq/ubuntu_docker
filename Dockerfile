FROM ba5877dc9bec

MAINTAINER Jianqing Peng <pengjianqing@gmail.com>

RUN sed  -i 's/security.ubuntu.com/mirrors.163.com/g'   /etc/apt/sources.list
RUN sed  -i 's/us.archive.ubuntu.com/mirrors.163.com/g'  /etc/apt/sources.list
RUN sed  -i 's/archive.ubuntu.com/mirrors.163.com/g'  /etc/apt/sources.list
RUN apt-get update
RUN echo yes|apt-get install git
RUN echo yes|apt-get install subversion
RUN echo yes|apt-get install vim
RUN echo yes|apt-get install wget
RUN wget https://raw.githubusercontent.com/pjq/config/master/.vimrc -O ~/.vimrc 
