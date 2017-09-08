FROM centos:7
MAINTAINER Carsten Ehbrecht <ehbrecht@dkrz.de>

# prepare centos
RUN \
  yum update -y && \
  yum install epel-release -y && \
  yum install -y wget vim byobu

# install synda
RUN wget http://sd-104052.dedibox.fr/synda/sdt/rpm/synda-3.8-1.x86_64_centos71.rpm
RUN yum install -y synda-3.8-1.x86_64_centos71.rpm

# patch myproxyclient
RUN /usr/share/python/synda/sdt/bin/pip install myproxyclient==2.0.1

CMD ["/bin/bash"]
