FROM alpine:3.22
ARG BUILDDATE
LABEL buildDate=$BUILDDATE
RUN apk --no-cache upgrade && \
    apk add -U --no-cache iptables ip6tables nftables iptables-legacy
COPY entry /usr/bin/
CMD ["entry"]
