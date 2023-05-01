FROM alpine:3.15

ARG DOMAIN_NAME

# Update packages + install NGINX + clean up
RUN apk update && \
    apk add --no-cache \
        nginx \
        openssl \
        curl \
    && rm -rf /var/cache/apk/* \
    && mkdir -p /etc/ssl/private

# Create a self-signed SSL certificate
RUN openssl req -x509 -nodes -days 365 \
    -subj  "/C=CH/ST=GE/L=Geneva/O=Inuani/CN=${DOMAIN_NAME}" \
    -newkey rsa:2048 -keyout /etc/ssl/private/${DOMAIN_NAME}.key \
    -out /etc/ssl/certs/${DOMAIN_NAME}.crt

COPY conf/nginx.conf /etc/nginx/nginx.conf

# to inform that the container will listen to these ports at runtime
# (the container will listen for HTTPS request on 443)
EXPOSE 443

# start nginx ("-g" to pass the command "deamon off;" to nginx be run in the foreground
CMD ["nginx", "-g", "daemon off;"]
