FROM alpine:3.4

RUN apk update && \
apk add nodejs && \
apk add inotify-tools

ADD package.json /
RUN npm install

ENV HTTP_PORT 8080
EXPOSE 8080

CMD ["sh", "-c", "source /src/initHome"]
