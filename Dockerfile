FROM debian:11

RUN apt update \
  && apt install -y  netatalk

COPY docker-entrypoint.sh /docker-entrypoint.sh
#COPY afp.conf /etc/afp.conf

CMD ["/docker-entrypoint.sh"]
