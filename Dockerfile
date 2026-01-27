FROM ghcr.io/at-cloud-pro/caddy-php:5.0.0 AS app

COPY ./app /app

RUN apk add git

RUN composer install

USER www-data:www-data
