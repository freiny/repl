FROM alpine:3.4

RUN apk update && \
apk add nodejs && \
apk add inotify-tools

ADD package.json /
RUN npm install

ENV HTTP_PORT 80
EXPOSE 80

CMD ["sh", "-c", "source /src/initHome"]
