#!/usr/bin/env bash
#=============================================================#
#
# This script is included by the Dockerfile.
#
# The script prepares and starts a Synda service in the
# docker container.
#
#=============================================================#
# keep external environment
set -o allexport

# update uid
groupmod -g $GID data
usermod -g data -G synda,data -u $UID data

# update permissions
#chown -R data.data /data
chown -R data.data /var/tmp/synda/sdt
chown -R data.data /var/log/synda/sdt
chown -R data.data /var/lib/synda/sdt

# update certificate
su data -c "synda certificate renew"

# start synda
/usr/share/python/synda/sdt/bin/sddaemon.py start

# show logs
#sleep 2
#tail -n 100 /var/log/synda/sdt/transfer.log
echo "check /var/log/synda/sdt/transfer.log"
echo "synda daemon status"

# loop for ever
#sleep infinity
