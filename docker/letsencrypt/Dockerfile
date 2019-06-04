FROM certbot/certbot

# COPY ./init-letsencrypt.sh .
COPY ./entrypoint.py .

# RUN chmod +x ./init-letsencrypt.sh
RUN chmod +x ./entrypoint.py

# ENTRYPOINT [ "./init-letsencrypt.sh" ]
ENTRYPOINT [ "./entrypoint.py" ]