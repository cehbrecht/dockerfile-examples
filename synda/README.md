# Synda service in Docker

## Run synda service manually

    $ docker run --name synda --rm -it \
      -v $PWD/etc/mycreds.conf:/etc/synda/sdt/credentials.conf \
      -v synda_data:/data \
      -v synda_lib:/var/lib/synda \
      -e UID=1001 \
      -e GID=1001 \
      synda /bin/bash
    > /etc/start-services.sh
    > tail -f /var/log/synda/sdt/transfer.log
    > synda daemon status

## Download data

    $ synda search CORDEX tasmax mon historical EUR-44
    $ synda install -y cordex.output.EUR-44.MPI-CSC.MPI-M-MPI-ESM-LR.historical.r2i1p1.REMO2009.v1.mon.tasmax.v20150609
    $ synda queue
    $ synda watch

## Use Docker exec

You can also use Docker `exec` to run synda commands:

    $ docker ps
    synda
    $ docker exec synda synda queue
