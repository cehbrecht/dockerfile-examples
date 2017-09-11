# Synda service in Docker

## Run synda service manually

    $ docker run --rm -it \
      -v $PWD/etc/mycreds.conf:/etc/synda/sdt/credentials.conf \
      -v data:/data \
      -v lib:/var/lib/synda \
      synda /bin/bash
    > /etc/start-services.sh
