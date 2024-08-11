FROM nginx:1.27.0-alpine-slim

COPY default.conf.template /etc/nginx/templates/default.conf.template

ENV PHP_FPM_HOST=php-fpm \
    PHP_FPM_PORT=9000 \
    CLIENT_MAX_BODY_SIZE=512M \
    CLIENT_BODY_TIMEOUT=300s \
    CLIENT_BODY_BUFFER_SIZE=512k
