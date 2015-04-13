FROM ubuntu:precise

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y apt-utils
RUN apt-get install -y sudo wget

RUN mkdir -p /deploy/ && \
	wget --no-check-certificate -qO- https://github.com/ownport/docker-cdh-pseudo/archive/master.tar.gz | tar -xz -C /deploy

RUN /deploy/docker-cdh-pseudo-master/rerun install:oracle-java 7u75:JDK

ENV JAVA_HOME /opt/jdk1.7.0_75
ENV PATH $JAVA_HOME/bin:$PATH

RUN /deploy/docker-cdh-pseudo-master/rerun install:1click-package cdh4-ubuntu-precise

RUN /deploy/docker-cdh-pseudo-master/rerun misc:clean


