FROM joseba/rasp-base

RUN apt-get update && \
apt-get install -yqq \
dnsmasq

VOLUME /data
ENV TERM xterm

EXPOSE 53
ENTRYPOINT ["/usr/sbin/dnsmasq", "-k","-C","/data/dnsmasq.conf"]