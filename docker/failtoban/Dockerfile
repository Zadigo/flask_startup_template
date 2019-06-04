FROM superitman/fail2ban

# Starting path is /etc/fail2ban
RUN mkdir ../start

COPY ./entrypoint.sh ../start/

RUN chmod +x ../start/entrypoint.sh

# Create auth.log -> /var/log/auth.log
RUN cd ../.. && ls -la
# RUN touch ../../var/log/auth.log

# EXPOSE 80 443

# ENTRYPOINT [ "../start/entrypoint.sh" ]