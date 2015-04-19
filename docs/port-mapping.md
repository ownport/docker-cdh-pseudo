# Hadoop port mapping

Service name            | Port                  | Description   
----------------------- | --------------------- | ------------------------------
HDFS DataNode           | 50010 (TCP)           | dfs.datanode.address (DataNode HTTP server port)
HDFS DataNode           | 1004 secure (TCP)     | dfs.datanode.address
HDFS DataNode           | 50075 (TCP)           | dfs.datanode.http.address
HDFS DataNode           | 1006 secure (TCP)     | dfs.datanode.http.address
HDFS DataNode           | 50020 (TCP)           | dfs.datanode.ipc.address
HDFS NameNode           | 8020 (TCP)            | fs.default.name / fs.defaultFS
HDFS NameNode           | 50070 (TCP)           | dfs.http.address / dfs.namenode.http-address
HDFS NameNode           | 50470 secure (TCP)    | dfs.https.address / dfs.namenode.https-address
YARN ResourceManager    | 8032 (TCP)            | yarn.resourcemanager.address
YARN ResourceManager    | 8030 (TCP)            | yarn.resourcemanager.scheduler.address
YARN ResourceManager    | 8031 (TCP)            | yarn.resourcemanager.resource-tracker.address
YARN ResourceManager    | 8033 (TCP)            | yarn.resourcemanager.admin.address
YARN ResourceManager    | 8088 (TCP)            | yarn.resourcemanager.webapp.address
YARN NodeManager        | 8040 (TCP)            | yarn.nodemanager.localizer.address
YARN NodeManager        | 8042 (TCP)            | yarn.nodemanager.webapp.address
YARN NodeManager        | 8041 (TCP)            | yarn.nodemanager.address
MAPREDUCE HistoryServer | 10020 (TCP)           | mapreduce.jobhistory.address
MAPREDUCE HistoryServer | 19888 (TCP)           | mapreduce.jobhistory.webapp.address

