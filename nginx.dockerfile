FROM nginx
ADD webapp/static /static
RUN mkdir /etc/nginx/ssl
RUN openssl req -x509 -nodes \
    -subj "/C=US/ST=Denial/L=Springfield/O=Dis/CN=www.example.com" \
    -days 365 \
    -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx.key \
    -out /etc/nginx/ssl/nginx.crt
RUN echo -n 'user:' > /etc/nginx/.htpasswd
RUN openssl passwd -apr1 'password' >> /etc/nginx/.htpasswd
