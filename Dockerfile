FROM debian:wheezy

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -q -y install python-dev openssl python-openssl python-pyasn1 python-twisted

RUN apt-get clean

EXPOSE 2222
WORKDIR /kippo
CMD ["twistd", "--nodaemon", "-y", "kippo.tac", "--pidfile=kippo.pid"]
