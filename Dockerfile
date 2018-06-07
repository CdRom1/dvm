FROM cdrom1/raspbian-docker-postfix
MAINTAINER CdRom1

RUN apt-get -y install openvpn
ADD conf.ovpn /opt/conf.ovpn
ADD credentials /opt/credentials

CMD openvpn /opt/conf.ovpn
