FROM alpine:3.15

RUN apk update && \
	apk add \
	redis && \
	rm -rf /var/cache/apk/*

COPY ./conf/redis.conf /etc/redis.conf

EXPOSE 6379

CMD ["redis-server",  "--protected-mode", "no"]