#!/bin/sh
#
# WHEN USING PLAY-WITH-DOCKER:
# SERVERNAME must point to manager instance in the form ipXXX-XXX-XXX-XXX-YYYYYYYYYYYYYY.direct.labs.play-with-docker.com
# (replace the "@" for a ".")
#
#export DOCKER_HOST=tcp://$SERVERNAME:2375
export DOCKER_HOST=ssh://ubuntu@$SERVERNAME
export ALA_URL=http://$SERVERNAME # traefik port
sed "s#\$ALA_URL#$ALA_URL#g" ./config/images-config-template.properties > ./config/images-config.properties
sed "s#\$ALA_URL#$ALA_URL#g" ./config/biocache-config-template.properties > ./config/biocache-config.properties
