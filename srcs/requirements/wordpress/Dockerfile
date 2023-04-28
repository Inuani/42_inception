FROM alpine:3.16

RUN apk update && \
    apk add --no-cache php8 php-phar php8-fpm php8-mysqli curl && \
    rm -rf /var/cache/apk/*

COPY ./tools/script.sh /script.sh
RUN chmod +x /script.sh

COPY ./conf/wp-config.php /wp-config.php

CMD ["sh", "/script.sh"]


