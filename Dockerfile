FROM jonaskello/rpi-alpine-scratch-qemu

MAINTAINER Pavel Serikov <pavelsro@users.noreply.github.com>

ENV VERSION 0.40

RUN apk update && apk add bash hostapd iptables dhcp && rm -rf /var/cache/apk/*
RUN echo "" > /var/lib/dhcp/dhcpd.leases
ADD wlanstart.sh /bin/wlanstart.sh

ENTRYPOINT [ "/bin/wlanstart.sh" ]

