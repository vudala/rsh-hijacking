FROM debian:bullseye

RUN apt update

RUN apt install -y rsh-redone-client \
    rsh-redone-server \
    net-tools \
    tcpdump \
    htop \
    iputils-ping \
    iproute2 \
    dsniff \
    hping3

USER root

COPY setup.sh /root/setup.sh

RUN chmod 700 /root/setup.sh
