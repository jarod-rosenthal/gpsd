<<<<<<< HEAD
FROM alpine:3.12
=======
FROM ubuntu
>>>>>>> develop

ENV PACKAGES="gpsd gpsd-clients"

RUN apt-get update && \
    apt-get -y install ${PACKAGES}

EXPOSE 2947
<<<<<<< HEAD
ENTRYPOINT ["/bin/sh", "-c", "/sbin/syslogd -S -O - -n & exec /usr/sbin/gpsd -N -n -G ${*}","--"]
=======
ENTRYPOINT ["/bin/sh", "-c", "/usr/sbin/gpsd -N -n -G ${*}","--"]
>>>>>>> develop
