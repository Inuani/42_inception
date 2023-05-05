FROM alpine:3.15

RUN apk update && \
    apk add --no-cache php8 php8-session php8-pdo_mysql php8-cgi lighttpd lighttpd-mod_auth wget spawn-fcgi && \
    mkdir -p /usr/share/webapps && \
    wget -O /usr/share/webapps/adminer.php https://www.adminer.org/latest-mysql-en.php && \
    chown -R lighttpd:lighttpd /usr/share/webapps

COPY ./conf/lighttpd.conf /etc/lighttpd/lighttpd.conf
COPY ./tools/script.sh /script.sh
RUN chmod +x /script.sh

EXPOSE 80

CMD ["/script.sh"]
