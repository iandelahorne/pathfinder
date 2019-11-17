#!/bin/sh

set -ex

chown -R nginx:nginx /opt/pathfinder
nginx -g "daemon off;"