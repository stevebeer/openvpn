FROM ubuntu:15.04

RUN apt-get update && apt-get upgrade -y && apt-get install wget

RUN wget https://git.io/vpn -O openvpn-install.sh && bash openvpn-install.sh

EXPOSE 1194

ENTRYPOINT /bin/bash
