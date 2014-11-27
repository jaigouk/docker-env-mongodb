FROM debian:wheezy

MAINTAINER "Jaigouk Kim" <ping@jaigouk.kim>

RUN apt-get update && \
    apt-get install -y wget

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 && \
    echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' > \
         /etc/apt/sources.list.d/mongodb.list && \
    apt-get update && \
    apt-get install -y adduser mongodb-org && \
    rm -rf /var/lib/apt/lists/*

# Define mountable directories.
VOLUME ["/data/db"]

# Expose ports.
#   - 27017: process
#   - 28017: http
EXPOSE 27017
EXPOSE 28017

ENTRYPOINT ["mongod"]
CMD ["-f", "/data/mongodb.conf"]
