FROM alpine:3.4

RUN apk update && \
apk add git && \
apk add go && \
apk add inotify-tools

ENV GOPATH /src
CMD ["sh", "-c", "source /src/initHome"]
