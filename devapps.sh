#!/bin/bash
# https://github.com/cmiles74/docker-vscode

# allow X11 access -- DISPLAY
export DISPLAY=172.23.244.94:0.0

docker run -d --rm -v c:/:/home/sy -e DISPLAY=$DISPLAY -p 5000:5000 --name devapps sudhakary/devapps:v3
docker exec -d devapps /developer/bin/gnome-www-browser
docker exec devapps /developer/bin/start-vscode
docker exec devapps /developer/bin/start-bcompare

