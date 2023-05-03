FROM alpine:3.15

RUN apk update && \
	apk add \
	redis && \
	rm -rf /var/cache/apk/*

# COPY ./conf/redis.conf /etc/redis.conf
# sed -i "s|protected-mode yes|protected-mode no|g" /etc/redis.conf
# sed -i "s|bind 127.0.0.1|#bind 127.0.0.1|g" /etc/redis.conf

EXPOSE 6379

# CMD ["redis-server"]
CMD ["redis-server",  "--protected-mode", "no"]