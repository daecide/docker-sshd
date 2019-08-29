FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y openssh-server
RUN service ssh start

COPY start.sh /start.sh

CMD /start.sh