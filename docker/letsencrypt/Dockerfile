FROM certbot/certbot

RUN mkdir ./start

COPY ./entrypoint.py /start/

# RUN chmod +x ./start/entrypoint.py

# COPY init-letsencrypt.sh .

RUN chmod +x entrypoint.py

ENTRYPOINT [ "./start/entrypoint.py" ]