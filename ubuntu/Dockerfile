FROM ubuntu:latest
MAINTAINER Carsten Ehbrecht <ehbrecht@dkrz.de>

RUN \
  apt-get update && \
  apt-get -y install \
          software-properties-common \
          build-essential \
          vim \
          unzip \
          curl \
          wget \
          git \
          byobu

VOLUME ["/opt"]

WORKDIR /opt

CMD ["/bin/bash"]
