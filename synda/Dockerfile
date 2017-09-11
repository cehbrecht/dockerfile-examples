FROM centos:7
MAINTAINER Carsten Ehbrecht <ehbrecht@dkrz.de>

# prepare centos
RUN \
  yum update -y && \
  yum install epel-release -y && \
  yum install -y wget myproxy openssl vim byobu less telnet file

# install synda
RUN wget http://sd-104052.dedibox.fr/synda/sdt/rpm/synda-3.8-1.x86_64_centos71.rpm
RUN yum install -y synda-3.8-1.x86_64_centos71.rpm && \
  /usr/share/python/synda/sdt/bin/pip install myproxyclient==2.0.1

# add data user
RUN groupadd data
RUN useradd -g data -G synda,data data

# default config
ADD etc/sdt.conf /etc/synda/sdt/sdt.conf
ADD etc/credentials.conf /etc/synda/sdt/credentials.conf

# data dir
RUN mkdir /data && chown -R data.data /data

# copy start script
ADD start-services.sh /etc/start-services.sh
RUN chmod +x /etc/start-services.sh

# VOLUMES
VOLUME /data
VOLUME /var/lib/synda

CMD ["/etc/start-services.sh"]
