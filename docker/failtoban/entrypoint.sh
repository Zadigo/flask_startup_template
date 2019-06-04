#!/bin/sh

touch /var/log/auth.log

# cp ./jails/sshd.conf /

# service fail2ban restart
# fail2ban-client status

"$@"