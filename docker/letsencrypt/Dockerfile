FROM certbot/certbot

RUN mkdir ./start

COPY ./init-letsencrypt.sh /start/

RUN chmod +x ./start/init-letsencrypt.sh

ENTRYPOINT [ "../start/init-letsencrypt.sh" ]