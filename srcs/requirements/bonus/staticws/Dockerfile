FROM alpine:3.15

RUN apk update && \
	apk add --no-cache \
	nodejs \
	npm

WORKDIR /app

COPY ws ws
COPY ./tools/script.sh /app/script.sh
RUN chmod +x /app/script.sh

EXPOSE 3000

CMD ["sh", "script.sh"]