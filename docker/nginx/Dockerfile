FROM nginx

# Replace default nginx.conf
RUN rm -v /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 443

# Start nginx
CMD ["nginx", "-g", "daemon off;"]