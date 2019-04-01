ARG alpine_tag=edge
FROM alpine:${alpine_tag}
ARG BUILD_DATE=NONE
ENV BUILD_DATE=${BUILD_DATE}
RUN apk add clamav-daemon
RUN freshclam
ENTRYPOINT ["clamd", "-c", "/etc/clamd.conf" ]
