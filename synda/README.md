# Run synda service

    $ docker run --rm -it -v etc/credentials.conf:/etc/synda/sdt/credentials.conf  /bin/bash
    # update cert
    > su - synda
    > synda certificate renew
    > exit
    # start service
    > /usr/share/python/synda/sdt/bin/sddaemon.py start
    > /usr/share/python/synda/sdt/bin/sddaemon.py status
    # check logs
    > less /var/log/synda/sdt/transfer.log
