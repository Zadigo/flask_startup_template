FROM superitman/fail2ban

# Starting path point is
# etc/fail2ban
RUN mkdir ../start

COPY ./entrypoint.sh ../start/

RUN chmod +x ../start/entrypoint.sh

# EXPOSE 80 443

# ENTRYPOINT [ "../start/entrypoint.sh" ]