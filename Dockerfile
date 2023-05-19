FROM alpine:latest

ENTRYPOINT ["/usr/bin/tokei"]

WORKDIR /workspace

RUN apk add --no-cache tokei

# run as unprivileged user
USER 1000:1000
