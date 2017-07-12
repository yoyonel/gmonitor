# url: https://hub.docker.com/r/nvidia/cuda/
FROM nvidia/cuda:latest

RUN apt update && \
	apt install -y \
		nvidia-settings \
		libxv1

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

# url: https://unix.stackexchange.com/questions/230238/starting-x-applications-from-the-terminal-and-the-warnings-that-follow
ENV NO_AT_BRIDGE 1

COPY ./gmonitor /gmonitor

ENTRYPOINT ["/gmonitor"]