FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/caddyserver/transform-encoder

FROM caddy:2.5.0

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

WORKDIR /dxt.rs
COPY Caddyfile /etc/caddy/Caddyfile
COPY public .

WORKDIR /ahumanexperiment.com
COPY Caddyfile /etc/caddy/Caddyfile
COPY ahe_public .

