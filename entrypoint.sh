#!/bin/bash

if [[ -z "$DDADDRESS" ]]; then
	echo "You have to set DDADDRESS"
	exit 1
fi

if [[ -z "$DDPORT" ]]; then
	echo "You have to set DDPORT"
	exit 1
fi

sed -i "s/DDADDRESS/$DDADDRESS/" /usr/local/etc/haproxy/haproxy.cfg
sed -i "s/DDPORT/$DDPORT/" /usr/local/etc/haproxy/haproxy.cfg

exec "$@"