#!/bin/bash
docker run --name synda --rm -it \
  -v $PWD/etc/mycreds.conf:/etc/synda/sdt/credentials.conf \
  # -v data:/data \
  # -v lib:/var/lib/synda \
  synda /bin/bash
