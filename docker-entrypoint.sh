#!/bin/sh
ssh-keygen -A

exec /usr/sbin/sshd -D -e \
    -o AuthorizedKeysFile=/home/proxy_user/.ssh/authorized_keys \
    -o AllowTcpForwarding=yes \
    -o PasswordAuthentication=no \
    "$@"
