FROM php:7.3-fpm-alpine

RUN apk add --no-cache \
    git libevent-dev openssl-dev bind-tools ${PHPIZE_DEPS}

RUN docker-php-ext-install sockets
RUN pecl install -o -f event && \
    docker-php-ext-enable --ini-name zz-event.ini event

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN mkdir -p /opt
WORKDIR /opt
ADD entrypoint.sh /opt/entrypoint.sh
RUN chmod +x /opt/entrypoint.sh

RUN git clone https://github.com/exodus4d/pathfinder_websocket.git

WORKDIR /opt/pathfinder_websocket


RUN composer install

EXPOSE 8020
EXPOSE 5555
CMD /opt/entrypoint.sh