FROM alpine:3.15

RUN apk update && \
    apk add --no-cache mariadb mariadb-client && \
    rm -rf /var/cache/apk/* && \
    mkdir -p /run/mysqld && \
    chown -R mysql:mysql /run/mysqld

COPY ./conf/custom.cnf /etc/my.cnf.d/

COPY ./tools/script.sh /script.sh
RUN chmod +x /script.sh

CMD ["sh", "/script.sh"]