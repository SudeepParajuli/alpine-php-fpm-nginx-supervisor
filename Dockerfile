FROM alpine:latest
RUN apk --update add \
  nginx \
  php-fpm \
  php-pdo \
  php-json \
  php-openssl \
  php-mysql \
  php-pdo_mysql \
  php-mcrypt \
  php-sqlite3 \
  php-pdo_sqlite \
  php-ctype \
  php-zlib \
  supervisor
RUN mkdir -p /etc/nginx
RUN mkdir -p /var/run/php-fpm
COPY  default /etc/nginx/sites-enabled/default
RUN mkdir -p /var/log/supervisor
RUN rm /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/nginx.conf
ADD nginx-supervisor.ini /etc/supervisor.d/nginx-supervisor.ini
EXPOSE 80 9000
CMD ["/usr/bin/supervisord"]

