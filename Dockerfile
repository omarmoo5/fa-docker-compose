FROM php:8-apache
# Install GD dependencies
RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libfreetype6-dev \
	&& docker-php-ext-configure gd --with-freetype --with-jpeg \
	&& docker-php-ext-install mysqli pdo pdo_mysql gd
WORKDIR /var/www/html
COPY ./FA ./
RUN chown -R 33:33 .
ENTRYPOINT [ "apache2-foreground" ]
