#!/bin/sh

# https://stackoverflow.com/questions/48507357/access-vagrant-vms-from-inside-docker-container

docker network create \
-d bridge \
--gateway=192.168.50.1 \
--subnet=192.168.50.1/24 alvertsworks_network

bridge_docker_id = $(docker network ls | grep alvertsworks_network | awk '{print $1}')

bridge_id = brctl show | grep $bridge_docker_id | awk '{print $1}'

echo "add this to Vagrant public network bridge: $bridge_id"