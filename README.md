Bitcoind for Docker
===================

Docker image that runs the Bitcoin bitcoind node in a container for easy deployment.

Requirements
------------

* Physical machine, cloud instance, or VPS that supports Docker running Ubuntu 14.04 or later (Recommended 20.04)
* At least x GB (check current size) to store the block chain files
* At least 1 GB RAM + 2 GB swap file

Quick Start
-----------

1. Create a `bitcoind-data` volume to persist the bitcoind blockchain data, should exit immediately.  The `bitcoind-data` container will store the blockchain when the node container is recreated (software upgrade, reboot, etc):

```
docker volume create --name=bitcoind-data
docker run -v bitcoind-data:/bitcoin --name=bitcoind-node -d \
    -p 8333:8333 \
    -p 127.0.0.1:8332:8332 \
    cminers/docker-bitcoin
```

2. Verify that the container is running and bitcoind node is downloading the blockchain

```
$ docker ps
```

3. You can then access the daemon's output thanks to the [docker logs command]( https://docs.docker.com/reference/commandline/cli/#logs)

```
docker logs -f bitcoind-node
```

4. Install optional init scripts for upstart and systemd are in the `init` directory.


Documentation
-------------

* Additional documentation in the [docs folder](docs).
