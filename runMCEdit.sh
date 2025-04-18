#!/bin/bash
xhost +

# VARS
MCDIR="/.root/.minecraft"
INPUTSDIR=$1
if [ -z "$INPUTSDIR" ]; then
  echo "Usage: $0 <path_to_minecraft>"
  exit 1
fi
if [ ! -d "$INPUTSDIR" ]; then
  echo "Error: $INPUTSDIR is not a directory."
  exit 2
fi

set -x

# docker build . -f Dockerfile-mcedit -t mcedit2
docker run --rm -it --pid=host -e DISPLAY=$DISPLAY -v $INPUTSDIR:$MCDIR -v /tmp/.X11-unix:/tmp/.X11-unix:ro mcedit2
