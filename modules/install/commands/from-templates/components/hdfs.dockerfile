## HDFS -------------------------------------------------

RUN /deploy/docker-cdh-pseudo-master/rerun config:hdfs --export-to /configs/

# NameNode and Secondary NameNode
EXPOSE 50070 50090

# DataNode
EXPOSE 50075 50010 50020

