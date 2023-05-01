FROM alpine:3.15

ARG DOMAIN_NAME

# Update packages + install NGINX + clean up
RUN apk update && \
    apk add --no-cache \
        nginx \
        openssl \
    && rm -rf /var/cache/apk/*

# Create a self-signed SSL certificate
RUN mkdir -p /etc/nginx/ssl/certs && \
    mkdir -p /etc/nginx/ssl/private && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -subj "/C=US/ST=CH/L=Geneva/O=Inuani/OU=Geneve/CN=${DOMAIN_NAME}" \
    -keyout /etc/nginx/ssl/private/${DOMAIN_NAME}.key \
    -out /etc/nginx/ssl/certs/${DOMAIN_NAME}.crt

COPY conf/nginx.conf /etc/nginx/nginx.conf

# to inform that the container will listen to these ports at runtime
# (the container will listen for HTTPS request on 443)
EXPOSE 443

# start nginx ("-g" to pass the command "deamon off;" to nginx be run in the foreground
CMD ["nginx", "-g", "daemon off;"]
