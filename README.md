# biocache-sample

Biocache store (backend) sample

Sample container-based setup of image-server and biocache backend.

## Swarm deploy

```sh
export SERVERNAME=<manager_node_ip_address>
. ./setenv.sh
docker stack deploy -c docker-compose.yml biocache
```
