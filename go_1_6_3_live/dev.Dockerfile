FROM alpine:3.4

RUN apk update && \
apk add inotify-tools && \
apk add git && \
apk add go

ENV GOPATH /src

ENV HTTP_PORT 8080
EXPOSE 8080

CMD ["sh", "-c", "source /src/initHome"]
