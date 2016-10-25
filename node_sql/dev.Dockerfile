FROM alpine:3.4

RUN apk update && \
apk add inotify-tools && \
apk add nodejs python && \
apk add mariadb mariadb-client

ADD package.json /
RUN npm install

ENV HTTP_PORT 8080
ENV DB_PORT 3306
EXPOSE 8080 3306

CMD ["sh", "-c", "source /src/initHome"]
