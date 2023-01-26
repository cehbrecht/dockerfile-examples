FROM centos:7
MAINTAINER Carsten Ehbrecht <ehbrecht@dkrz.de>
LABEL Description="centos dev" Vendor="Mac Pingu" Version="0.1"

RUN \
  yum update -y && \
  yum install -y epel-release \
  yum install -y \
          gcc-c++ \
          make \
          vim \
          bzip2 \
          unzip \
          curl \
          wget \
          git \
          byobu

ENV PATH /opt/anaconda/bin:$PATH

VOLUME ["/opt"]
VOLUME ["/data"]

WORKDIR /opt

CMD ["/bin/bash"]
