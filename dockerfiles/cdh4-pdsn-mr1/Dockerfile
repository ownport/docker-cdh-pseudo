FROM cdh4-pdsn-hdfs:latest

ENV DEBIAN_FRONTEND noninteractive

RUN mkdir -p /deploy/ && \
    wget --no-check-certificate -qO- https://github.com/ownport/docker-cdh-pseudo/archive/master.tar.gz | tar -xz -C /deploy

RUN /deploy/docker-cdh-pseudo-master/rerun config:init --export-to /configs/
RUN /deploy/docker-cdh-pseudo-master/rerun config:mr1 --export-to /configs/

# clean temporary files after installation
RUN /deploy/docker-cdh-pseudo-master/rerun misc:clean

# Run configuration
CMD ["/configs/rerun", "rc0:config-init", "--run"]

