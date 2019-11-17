#!/bin/sh

set -ex

chown -R www-data /opt/pathfinder

echo starting

composer install
php-fpm --nodaemonize