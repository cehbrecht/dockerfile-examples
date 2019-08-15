FROM ubuntu:latest
MAINTAINER Carsten Ehbrecht <ehbrecht@dkrz.de>
LABEL Description="ubuntu dev" Vendor="Mac Pingu" Version="0.3"

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

ENV PATH /opt/anaconda/bin:$PATH

VOLUME ["/opt"]

WORKDIR /opt

CMD ["/bin/bash"]
