FROM internetsystemsconsortium/bind9:9.18

RUN apt update \
  && apt install -y \
  bind9-doc \
  dnsutils \
  geoip-bin \
  mariadb-server \
  net-tools \
  curl \
  nano


# Copy configuration files
COPY ./named.conf.options /etc/bind/
COPY ./named.conf.local /etc/bind/
COPY ./zones/ /etc/bind/zones/
RUN mkdir -p /etc/bind/keys/
RUN chown -R bind /etc/bind/
COPY ./keys  /etc/bind/keys/


# Start the Name Service
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
