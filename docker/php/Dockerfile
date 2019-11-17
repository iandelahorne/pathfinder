FROM php:7.3-fpm-alpine

RUN apk add --no-cache \
  curl-dev libpng-dev ${PHPIZE_DEPS} git ruby && \
  docker-php-ext-install curl gd pdo_mysql

RUN pecl install -o -f redis && \
  docker-php-ext-enable redis

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY ./docker/php/entrypoint.sh /bin/entrypoint.sh

RUN chmod 0755 /bin/entrypoint.sh
RUN mkdir -p /opt/pathfinder
RUN mkdir -p /opt/pathfinder/logs
WORKDIR /opt/pathfinder

EXPOSE 9000
ENTRYPOINT ["/bin/entrypoint.sh"]

#RUN chmod 0766 ./logs

