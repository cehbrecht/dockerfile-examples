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

# update certificate
su synda -c "synda certificate renew"

# start synda
/usr/share/python/synda/sdt/bin/sddaemon.py start

# show logs
tail -f /var/log/synda/sdt/transfer.log

# loop for ever
#sleep infinity
