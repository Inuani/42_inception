#!/bin/sh

/usr/bin/spawn-fcgi -a 127.0.0.1 -p 9000 -u lighttpd -g lighttpd -f /usr/bin/php-cgi8
/usr/sbin/lighttpd -D -f /etc/lighttpd/lighttpd.conf
