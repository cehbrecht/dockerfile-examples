FROM condaforge/mambaforge:latest
MAINTAINER Carsten Ehbrecht <ehbrecht@dkrz.de>
LABEL Description="debian dev" Vendor="Mac Pingu" Version="0.5"

RUN conda init bash
RUN conda install -c conda-forge mamba

WORKDIR /opt

CMD ["/bin/bash"]
