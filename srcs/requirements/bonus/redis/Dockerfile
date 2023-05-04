FROM alpine:3.15

RUN apk update && \
	apk add \
	redis && \
	rm -rf /var/cache/apk/*

COPY ./conf/redis.conf /etc/redis.conf
#sed -i "s|protected-mode yes|protected-mode no|g" /etc/redis.conf
#RUN sed -i "s|bind 127.0.0.1|#bind 127.0.0.1|g" /etc/redis.conf
RUN sed -i "s|# maxmemory <bytes>|maxmemory 2mb|g" /etc/redis.conf
RUN sed -i "s|# maxmemory-policy noeviction|maxmemory-policy allkeys-lru|g" /etc/redis.conf

EXPOSE 6379

CMD ["redis-server",  "--protected-mode", "no"]