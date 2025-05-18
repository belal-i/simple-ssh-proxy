FROM alpine:latest

LABEL version="0.2.0-rc-1"

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN apk add openssh doas && \
    adduser -D proxy_user && \
    passwd -u proxy_user && \
    chmod +x /docker-entrypoint.sh

EXPOSE 22

ENTRYPOINT ["/docker-entrypoint.sh"]
