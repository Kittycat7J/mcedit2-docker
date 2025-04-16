docker build . -f mcedit -t mcedit2
# docker run --rm -it --pid=host -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro mcedit2