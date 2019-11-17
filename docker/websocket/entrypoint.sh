#!/bin/sh

set -ex

#PHP_HOST=$(dig +short php-fpm)
php cmd.php -tcpHost 0.0.0.0 --debug 3