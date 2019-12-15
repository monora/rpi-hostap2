FROM arm32v7/debian
# FROM sdelrio/rpi-hostap

MAINTAINER Horst D. <monora@users.noreply.github.com>
ENV VERSION 0.10

RUN apt-get update
RUN apt-get install --yes apt-utils vim
RUN apt-get install --yes hostapd iptables dhcpcd5

ADD wlanstart.sh /bin/wlanstart.sh

ENTRYPOINT [ "/bin/wlanstart.sh" ]

