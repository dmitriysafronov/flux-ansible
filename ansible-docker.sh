#!/usr/bin/env sh

ANSIBLE_IMAGE="registry.cyberbrain.pw/tools/docker/ansible:latest"

docker run --rm -i \
  -v "$(pwd)":"$(pwd)" -w "$(pwd)" \
  -v $SSH_AUTH_SOCK:/ssh-agent \
  -e SSH_AUTH_SOCK=/ssh-agent \
  "${ANSIBLE_IMAGE}" $@
