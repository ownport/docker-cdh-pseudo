FROM cdh4-pdsn-mr1:latest

ENV DEBIAN_FRONTEND noninteractive

RUN mkdir -p /deploy/ && \
    wget --no-check-certificate -qO- https://github.com/ownport/docker-cdh-pseudo/archive/master.tar.gz | tar -xz -C /deploy

RUN apt-get update && apt-get install -y oozie oozie-client

RUN /deploy/docker-cdh-pseudo-master/rerun config:init --export-to /configs/

# clean temporary files after installation
RUN /deploy/docker-cdh-pseudo-master/rerun misc:clean

# Oozie ports
EXPOSE 11000 11001

# Run configuration
CMD ["/configs/rerun", "rc0:config-init", "--run"]

