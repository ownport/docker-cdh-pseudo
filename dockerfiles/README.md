# Cloudera Dockers

| Dockerfile                        | Tag                               | Depends on
| --------------------------------- | --------------------------------- | ------------------------------------
| cdh4-base/                        | cdh4-base                    		| ubuntu:precise
| cdh5-base/                        | cdh5-base                    		| ubuntu:trusty
| cdh4-pdsn-base/     				| cdh4-pdsn-base      				| cdh4-base
| cdh4-pdsn-hdfs/     				| cdh4-pdsn-hdfs      				| cdh4-pdsn-base
| cdh4-pdsn-mr1/      				| cdh4-pdsn-mr1       				| cdh4-pdsn-hdfs


PSDN: Pseudo Distributed Single Node Hadoop Cluster


