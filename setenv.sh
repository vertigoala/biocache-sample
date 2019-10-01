#!/bin/sh
#
# SERVERNAME must point to a manager instance
#
#export DOCKER_HOST=tcp://$SERVERNAME:2375
#export DOCKER_HOST=ssh://ubuntu@$SERVERNAME
#export ALA_URL=http://$SERVERNAME # traefik port
export ALA_URL=https://coepi.serveo.net
sed "s#\$ALA_URL#$ALA_URL#g" ./config/images-config-template.properties > ./config/images-config.properties
sed "s#\$ALA_URL#$ALA_URL#g" ./config/biocache-config-template.properties > ./config/biocache-config.properties
sed "s#\$ALA_URL#$ALA_URL#g" ./config/ala-collectory-config-template.properties > ./config/ala-collectory-config.properties
sed "s#\$ALA_URL#$ALA_URL#g" ./config/apikey-config-template.properties > ./config/apikey-config.properties
