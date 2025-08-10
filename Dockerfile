FROM alpine:latest as build

WORKDIR /public

RUN apk add curl

RUN curl https://github.com/gohugoio/hugo/releases/download/v0.148.2/hugo_0.148.2_linux-amd64.tar.gz -o /usr/bin/hugo
RUN chmod u+x /usr/bin/hugo

COPY config.yml archetypes/ content/ resources/ static/ themes/ ./
RUN hugo

FROM caddy:latest

WORKDIR /dxt.rs

COPY Caddyfile /etc/caddy/Caddyfile
COPY --from=build /public ./
