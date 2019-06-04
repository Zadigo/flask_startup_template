FROM superitman/fail2ban

COPY ./entrypoint ../start/

RUN chmod +x ../start/entrypoint.sh

# ls -la && cp /docker/failtoban/entrypoint.sh ../start/ &&
            #   chmod +x ../start/entrypoint.sh &&
            #   ../start/entrypoint.sh

ENTRYPOINT [ "../start/entrypoint.sh" ]