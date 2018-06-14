FROM centos:7
MAINTAINER Carsten Ehbrecht <ehbrecht@dkrz.de>
LABEL Description="synda" Vendor="Carsten Ehbrecht" Version="3.9"

# prepare centos
RUN \
  yum update -y && \
  yum install epel-release -y && \
  yum install -y wget myproxy openssl vim byobu less telnet file

# install synda
RUN wget http://sd-104052.dedibox.fr/synda/sdt/rpm/synda-3.9-1.x86_64_centos71.rpm
RUN yum install -y synda-3.9-1.x86_64_centos71.rpm && \
  /usr/share/python/synda/sdt/bin/pip install myproxyclient==2.0.1

# add data user
ENV GID 1001
ENV UID 1001
RUN groupadd -g $GID data && \
  useradd -g data -G synda,data -u $UID data

# default config
COPY etc/sdt.conf /etc/synda/sdt/sdt.conf
COPY etc/credentials.conf /etc/synda/sdt/credentials.conf

# data dir
RUN mkdir /data && chown -R data.data /data

# copy start script
COPY start-services.sh /etc/start-services.sh
RUN chmod +x /etc/start-services.sh

# VOLUMES
VOLUME /data
VOLUME /var/lib/synda

# CMD ["/etc/start-services.sh"]
CMD ["/bin/bash"]
