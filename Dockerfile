FROM ubuntu:20.04

RUN apt-get update && apt-get install openttd -y
RUN adduser --disabled-password --uid 1000 --shell /bin/bash --gecos "" openttd
ADD ./openttd.sh /
ADD ./openttd.cfg /home/openttd/.openttd/

VOLUME /home/openttd/.openttd

EXPOSE 3979/tcp
EXPOSE 3979/udp

CMD [ "/openttd.sh" ]
