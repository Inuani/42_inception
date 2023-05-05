#!/bin/sh

# start fastcgi
# -a 127.0.0.1- > IP address for server
# p 9000 -> port for server
# -u lighttpd -g lighttpd -> set user/group
# -f /usr/bin/php-cgi8 -> specifies FastCGI program (in this case is the PHP FastCGI)
/usr/bin/spawn-fcgi -a 127.0.0.1 -p 9000 -u lighttpd -g lighttpd -f /usr/bin/php-cgi8

# /usr/sbin/lighttpd -> starts lighttpd server
# -D -> daemon
# -f /etc/lighttpd/lighttpd.conf -> conf file to use for server
/usr/sbin/lighttpd -D -f /etc/lighttpd/lighttpd.conf
