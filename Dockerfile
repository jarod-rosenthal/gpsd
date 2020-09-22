FROM alpine:3.12

ENV PACKAGES="gpsd"

RUN apk update && \
    apk add --no-cache ${PACKAGES}

EXPOSE 2947
ENTRYPOINT ["/bin/sh", "-c", "/sbin/syslogd -S -O - -n & exec /usr/sbin/gpsd -N -b -n -G ${*}","--"]
