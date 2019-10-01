#!/bin/bash
docker service rm biocache_biocache-store
docker config rm biocache_biocache-config
docker stack deploy -c docker-compose.yml biocache

