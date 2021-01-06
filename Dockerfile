FROM ubuntu

ENV PACKAGES="gpsd gpsd-clients"

RUN apt-get update && \
    apt-get -y install ${PACKAGES}

EXPOSE 2947
ENTRYPOINT ["/bin/sh", "-c", "/usr/sbin/gpsd -N -n -G ${*}","--"]
