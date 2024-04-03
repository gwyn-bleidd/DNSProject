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


# Start the Name Service
CMD ["/usr/sbin/named", "-g", "-d", "3", "-c", "/etc/bind/named.conf", "-u", "bind"]
