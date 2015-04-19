# Docker CDH Pseudo

## Install

### Get the latest Docker package.

```sh
$ sudo wget -qO- https://get.docker.com/ | sh
```
and then re-login to the server.

### Pull Ubuntu Precise and Trusty

```sh
$ docker pull ubuntu:precise
$ docker pull ubuntu:trusty
```

### Clone latest version of docker-cdh-pseudo

```sh
$ git clone https://github.com/ownport/docker-cdh-pseudo.git
Cloning into 'docker-cdh-pseudo'...
remote: Counting objects: 147, done.
remote: Compressing objects: 100% (113/113), done.
remote: Total 147 (delta 39), reused 127 (delta 23), pack-reused 0
Receiving objects: 100% (147/147), 33.52 KiB | 0 bytes/s, done.
Resolving deltas: 100% (39/39), done.
Checking connectivity... done.
$
```

### Creating Docker CDH Pseudo images

```sh
$ cd docker-cdh-pseudo/
$ docker build -t "cdh4-base" dockerfiles/cdh4-base/
$ docker build -t "cdh4-pdsn-base" dockerfiles/cdh4-pdsn-base/
$ docker build -t "cdh4-pdsn-hdfs" dockerfiles/cdh4-pdsn-hdfs/
$ docker build -t "cdh4-pdsn-mr1" dockerfiles/cdh4-pdsn-mr1/
$ docker build -t "cdh4-pdsn-oozie" dockerfiles/cdh4-pdsn-oozie/
$
```

## Runlevels

Runlevel | Services
-------- | ----------------
rc0      | init
rc1      | hdfs
rc2      | mr1
rc3      | oozie
rc4      |
rc5      |
rc6      |
rc7      |
rc8      |
rc9      |



