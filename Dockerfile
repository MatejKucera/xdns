FROM debian

RUN apt-get -y update && \
    apt-get -y install bind9 bind9utils bind9-doc

#COPY conf/named.conf /etc/bind/named.conf
#COPY conf/named.conf.local /etc/bind/named.conf.local
#COPY conf/named.conf.default-zones /etc/bind/named.conf.default-zones

#EXPOSE 53/udp

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]
