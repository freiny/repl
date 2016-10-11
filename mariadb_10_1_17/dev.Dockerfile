FROM alpine:3.4

RUN apk update && \
apk add inotify-tools && \
apk add mariadb mariadb-client

ENV DB_PORT 3306
EXPOSE 3306

CMD ["sh", "-c", "source /src/initHome"]
