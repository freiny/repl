FROM alpine:3.4

RUN apk update && \
apk add nodejs && \
apk add inotify-tools

ADD package.json /
RUN npm install

CMD ["sh", "-c", "source /src/initHome"]
