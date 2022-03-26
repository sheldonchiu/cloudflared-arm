FROM ghcr.io/linuxserver/baseimage-alpine:arm64v8-3.15

# environment settings
ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2

WORKDIR /app

RUN wget -q https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm64 -O cloudflared \
    && chmod +x cloudflared

# add local files
COPY root/ /
