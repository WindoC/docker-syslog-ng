FROM ubuntu:latest

LABEL maintainer="Antonio Cheong <windo.ac@gmail.com>"

RUN apt update && apt install -y syslog-ng && rm -rf /var/lib/apt/lists/*

EXPOSE 514/udp 514/tcp

ENTRYPOINT ["/usr/sbin/syslog-ng", "--no-caps", "-F"]
