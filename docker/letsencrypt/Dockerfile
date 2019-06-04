FROM certbot/certbot

RUN mkdir /start/

COPY ./docker/letsencrypt/entrypoint.py /start/

RUN chmod +x ./start/entrypoint.py

# COPY init-letsencrypt.sh .

# RUN chmod +x init-letsencrypt.sh

ENTRYPOINT [ "./start/entrypoint.py" ]