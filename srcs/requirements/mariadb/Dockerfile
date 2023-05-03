FROM alpine:3.15

RUN apk update && \
    apk add --no-cache mariadb mariadb-client && \
    rm -rf /var/cache/apk/* && \
    mkdir -p /run/mysqld /var/lib/mysql
    # chown -R mysql:mysql /run/mysqld && \
    # chown -R mysql:mysql /var/lib/mysql

COPY ./conf/custom.cnf /etc/my.cnf.d/mariadb-server.cnf

COPY ./tools/script.sh /script.sh
RUN chmod +x /script.sh

EXPOSE 3306

CMD ["sh", "/script.sh"]