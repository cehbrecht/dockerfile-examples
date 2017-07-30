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

# ENV BIRDHOUSE /home/pingu/birdhouse

RUN useradd -u 500 -m -d /home/pingu pingu
#VOLUME ["/home/pingu/birdhouse"]
#RUN chown -R pingu:pingu /home/pingu/birdhouse

USER pingu
ENV USER pingu
WORKDIR /home/pingu

RUN curl -LO https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
RUN \
  bash Miniconda2-latest-Linux-x86_64.sh -b -p /home/pingu/anaconda && \
  echo 'PATH=~/anaconda/bin:$PATH' >> .profile && \
  rm Miniconda2-latest-Linux-x86_64.sh
ENV PATH=/home/pingu/anaconda/bin:${PATH}
RUN conda update -y conda

EXPOSE 8090-8096

CMD ["/bin/bash"]
