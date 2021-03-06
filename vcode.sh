#!/bin/bash
# https://github.com/cmiles74/docker-vscode



# allow X11 access -- DISPLAY
export DISPLAY=172.23.244.94:0.0

# start vscode
docker run -d --rm \
  -v ${pwd}:/developer/project \
  -e DISPLAY=$DISPLAY \
  -p 5000:5000 \
  --name vscode \
  cmiles74/docker-vscode



