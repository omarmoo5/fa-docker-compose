FROM php:8-apache
RUN docker-php-ext-install mysqli pdo pdo_mysql
WORKDIR /var/www/html
COPY ./FA ./
RUN chown -R 33:33 .
ENTRYPOINT [ "apache2-foreground" ]
