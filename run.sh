#!/bin/sh

clear && docker build . -t ansible_docker_image

docker run -it \
-v "$(pwd)/:/ansible" \
ansible_docker_image -f 10 main.yml