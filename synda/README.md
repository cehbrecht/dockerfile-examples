# Synda service in Docker

## Run synda with docker-compose

    $ docker-compose up -d
    
## Run synda service manually

    $ docker run --rm -it -v $PWD/etc/mycreds.conf:/etc/synda/sdt/credentials.conf synda /bin/bash
    > /etc/start-services.sh
