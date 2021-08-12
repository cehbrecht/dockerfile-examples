FROM conda/miniconda3:latest
MAINTAINER Carsten Ehbrecht <ehbrecht@dkrz.de>
LABEL Description="debian dev" Vendor="Mac Pingu" Version="0.4"

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

RUN conda init bash
RUN conda install -c conda-forge mamba

WORKDIR /opt

CMD ["/bin/bash"]
