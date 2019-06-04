FROM superitman/fail2ban

# Starting path is /etc/fail2ban
RUN mkdir ../start

COPY ./entrypoint.sh ../start/

RUN chmod +x ../start/entrypoint.sh

# Create auth.log -> /var/log/auth.log
RUN touch ../../var/log/auth.log

# Copy a modified version of the
# .local jail file
# COPY ./jails/jail.local .

# EXPOSE 80 443

# Copy configuration files or
# replace existing ones with
# newer configuration options
RUN curl -s https://raw.githubusercontent.com/Zadigo/fail2ban-configs/master/filter.d/nginx-badbots.conf > ./filter.d/nginx-badbots.conf
RUN curl -s https://raw.githubusercontent.com/Zadigo/fail2ban-configs/master/filter.d/nginx-noscript.conf > ./filter.d/nginx-noscript.conf
RUN curl -s https://raw.githubusercontent.com/Zadigo/fail2ban-configs/master/filter.d/nginx-dos.conf > ./filter.d/nginx-dos.conf
RUN curl -s https://raw.githubusercontent.com/Zadigo/fail2ban-configs/master/filter.d/nginx-badrequests.conf > ./filter.d/nginx-badrequests.conf

# ENTRYPOINT [ "../start/entrypoint.sh" ]