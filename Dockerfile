FROM cdrom1/raspbian-docker-postfix
MAINTAINER CdRom1

RUN apt-get -y install openvpn
ADD conf.ovpn /opt/conf.ovpn
ADD credentials /opt/credentials

RUN openvpn /opt/conf.ovpn &&
CMD /opt/install.sh;/usr/bin/supervisord -c /etc/supervisor/supervisord.conf
