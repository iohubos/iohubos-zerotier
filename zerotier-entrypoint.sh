#!/bin/bash

if [ "Y" == "$CLEAN_PID" ]; then
  [ -f /var/lib/zerotier-one/zerotier-one.pid ] && rm /var/lib/zerotier-one/zerotier-one.pid
fi
if [ "Y" == "$ROUTE_HOST" ]; then
  iptables -t nat -I POSTROUTING -o eth0 -j MASQUERADE
fi

exec /entrypoint.sh "$@"
