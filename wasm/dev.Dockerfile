FROM alpine:3.4

RUN apk update && \
apk add inotify-tools && \
apk add python bash git openssl tar cmake make g++ yasm

# export ASM=/usr/bin/yasm
CMD ["bash", "-c", "source /src/initHome"]
