FROM nginx:1.17.2-alpine

COPY ./docker/nginx/nginx-conf.nginx /etc/nginx/nginx.conf
COPY ./docker/nginx/pathfinder.nginx /etc/nginx/conf.d/default.conf
COPY ./docker/nginx/mime.types /etc/nginx/mime.types
COPY ./docker/nginx/entrypoint.sh /root/entrypoint.sh
RUN chmod +x /root/entrypoint.sh

#ENTRYPOINT ["sh", "-c", "/root/entrypoint.sh"]