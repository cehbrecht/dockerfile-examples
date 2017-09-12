#!/bin/bash
docker run --name synda --rm -it \
  -v $PWD/etc/mycreds.conf:/etc/synda/sdt/credentials.conf \
  -v synda_data:/data \
  -v synda_lib:/var/lib/synda \
  -e UID=1001 \
  -e GID=1001 \
  synda /bin/bash
