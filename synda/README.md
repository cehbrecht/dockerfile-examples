# Synda service in Docker

## Run synda service manually

    $ docker run --name synda --rm -it \
      -v $PWD/etc/mycreds.conf:/etc/synda/sdt/credentials.conf \
      -v data:/data \
      -v lib:/var/lib/synda \
      synda /bin/bash
    > /etc/start-services.sh
    > tail -f /var/log/synda/sdt/transfer.log

## Download data

$ docker ps
synda
$ docker exec synda synda search CORDEX tasmax mon historical EUR-44
$ docker exec synda synda install -y cordex.output.EUR-44.MPI-CSC.MPI-M-MPI-ESM-LR.historical.r2i1p1.REMO2009.v1.mon.tasmax.v20150609
$ docker exec synda synda queue
$ docker exec synda synda watch
