FROM composer:2 AS dependencies

WORKDIR /app
COPY composer.json ./
RUN composer install --no-dev --no-interaction --prefer-dist --optimize-autoloader

FROM php:8.2-apache

RUN docker-php-ext-install mysqli
COPY --from=dependencies /app/vendor /opt/phpmailer/vendor

WORKDIR /var/www/html
