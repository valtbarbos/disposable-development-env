#!/bin/sh

clear && docker build . -t ansible_docker_image

docker run -it \
-v "$(pwd)/:/ansible" \
--network=alvertsworks_network \
ansible_docker_image -f 10 main.yml