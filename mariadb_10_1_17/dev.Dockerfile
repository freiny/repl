FROM alpine:3.4

RUN apk update && \
apk add inotify-tools && \
apk add mariadb mariadb-client

# ADD ./files/my.cnf /etc/mysql/my.cnf

EXPOSE 3306

CMD ["sh", "-c", "source /src/initHome"]
