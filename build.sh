#!/bin/sh
docker build --rm --force-rm -t hinzundcode/rpi-node:5.11 rpi-node/5.11
docker push hinzundcode/rpi-node:5.11

docker build --rm --force-rm -t hinzundcode/rpi-node:6.0 rpi-node/6.0
docker push hinzundcode/rpi-node:6.0

docker build --rm --force-rm -t hinzundcode/rpi-node:6.2 rpi-node/6.2
docker push hinzundcode/rpi-node:6.2

docker tag hinzundcode/rpi-node:6.2 hinzundcode/rpi-node:latest
docker push hinzundcode/rpi-node:latest
