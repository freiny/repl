FROM alpine:3.4

RUN apk update && \
apk add inotify-tools && \
apk add go

CMD ["sh", "-c", "source /src/initHome"]
