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

