## PDSN-Base --------------------------------------------

# Install Hadoop in pseudo-distributed mode
RUN apt-get install -y hadoop-0.20-conf-pseudo
RUN echo "export JAVA_HOME=${JAVA_HOME}" >>/etc/hadoop/conf.pseudo.mr1/hadoop-env.sh

RUN /deploy/docker-cdh-pseudo-master/rerun verify:base

