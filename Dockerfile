FROM alpine:edge

ENV PACKAGES="gpsd"

RUN apk update && \
    apk add --no-cache ${PACKAGES}

EXPOSE 2947
ENTRYPOINT ["/bin/sh", "-c", "/sbin/syslogd -S -O - -n & exec /usr/sbin/gpsd  -b -N -n -G ${*}","--"]
