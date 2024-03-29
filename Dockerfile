FROM alpine:latest

ADD configure.sh /opt/configure.sh

RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
 && chmod +x /opt/configure.sh

ENTRYPOINT ["sh", "-c", "/opt/configure.sh"]
