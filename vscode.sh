
#!/bin/bash
# https://github.com/cmiles74/docker-vscode



# allow X11 access -- DISPLAY
export DISPLAY=172.23.244.94:0.0

docker run -d --rm -v c:/:/home/sy -e DISPLAY=$DISPLAY -p 5000:5000 --name vscode sudhakary/vscode:v1
