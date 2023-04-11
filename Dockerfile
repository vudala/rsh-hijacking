FROM debian:bullseye

RUN apt update

RUN apt install -y rsh-redone-client \
    rsh-redone-server \
    net-tools \
    tcpdump \
    htop

RUN /usr/sbin/inetd start