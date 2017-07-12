#!/usr/bin/env sh

xhost +

nvidia-docker run \
	-it --rm \
	--env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
	-v $(realpath ../.):/tmp/workdir \
	$USER/screenpulse/gmonitor \
	bash

xhost -
