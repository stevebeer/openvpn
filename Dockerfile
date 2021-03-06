FROM ubuntu:15.04

RUN apt-get update

RUN apt-get upgrade -y

RUN apt-get install wget -y

RUN mkdir /usr/share/openvpn/

WORKDIR /usr/share/openvpn/

RUN wget https://git.io/vpn -O openvpn-install.sh 

RUN ./openvpn-install.sh

EXPOSE 1194

ENTRYPOINT /bin/bash
