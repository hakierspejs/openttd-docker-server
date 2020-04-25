FROM fedora:31

RUN dnf upgrade -y && dnf install -y openttd
RUN useradd --uid 1000 --shell /bin/bash openttd
ADD ./openttd.sh /
ADD ./openttd.cfg /home/openttd/.openttd/

VOLUME /home/openttd/.openttd

EXPOSE 3979/tcp
EXPOSE 3979/udp

CMD [ "/openttd.sh" ]
