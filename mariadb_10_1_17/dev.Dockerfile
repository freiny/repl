FROM alpine:3.4

RUN apk update && \
apk add inotify-tools && \
apk add mariadb mariadb-client
# RUN mysql_install_db --user=mysql
# RUN cd '/usr' ; /usr/bin/mysqld_safe --datadir='/var/lib/mysql'

# ENV TERM xterm
# COPY db/conf/* /etc/mysql/

ENV DB_PORT 3306
EXPOSE 3306

CMD ["sh", "-c", "source /src/initHome"]
