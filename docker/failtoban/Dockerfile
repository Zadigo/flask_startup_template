FROM superitman/fail2ban

# Get Firewall settings
RUN iptables -L

RUN iptables -S

# Starting path is /etc/fail2ban
RUN mkdir ../start

COPY ./entrypoint.sh ../start/

RUN chmod +x ../start/entrypoint.sh

# Create auth.log -> /var/log/auth.log
RUN touch ../../var/log/auth.log

# Copy a modified version of the
# .local jail file
# COPY ./jails/jail.local .

# Copy configuration files or
# replace existing ones with
# newer configuration options
# COPY ./jails/nginx-http-auth.conf ./filter.d/
COPY ./jails/nginx-badbots.conf ./filter.d/
COPY ./jails/nginx-noproxy.conf ./filter.d/
COPY ./jails/nginx-noscript.conf ./filter.d/

# EXPOSE 80 443

# ENTRYPOINT [ "../start/entrypoint.sh" ]