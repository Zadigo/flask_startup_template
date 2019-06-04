FROM superitman/fail2ban

RUN ls -la && mkdir ../start

COPY ./entrypoint.sh ../start/

RUN chmod +x ../start/entrypoint.sh

# ls -la && cp /docker/failtoban/entrypoint.sh ../start/ &&
            #   chmod +x ../start/entrypoint.sh &&
            #   ../start/entrypoint.sh

ENTRYPOINT [ "../start/entrypoint.sh" ]