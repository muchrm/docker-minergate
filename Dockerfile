FROM ubuntu:latest

RUN apt-get update \
    && apt-get install wget -y \
    && rm -rf /var/lib/apt/lists/* \
    && wget https://minergate.com/download/deb-cli -O install.deb \
    && dpkg -i install.deb \
    && rm -f install.deb \
    && apt-get remove wget -y

COPY start.sh /start.sh
RUN chmod 755 /start.sh

CMD [ "/start.sh" ]
