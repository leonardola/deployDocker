FROM php:7.0-apache
#RUN apt-get update && apt-get install -y php-apc php-curl php-imap php-gd libapache2-mod-php php-xml php-zip
COPY config/php.ini /usr/local/etc/php/
RUN a2enmod rewrite
RUN a2enmod headers
RUN a2enmod ssl
#RUN phpenmod imap
RUN apt-get update && apt-get install -y libmagickwand-6.q16-dev --no-install-recommends \
 && ln -s /usr/lib/x86_64-linux-gnu/ImageMagick-6.8.9/bin-Q16/MagickWand-config /usr/bin \
 && pecl install imagick \
 && echo "extension=imagick.so" > /usr/local/etc/php/conf.d/ext-imagick.ini
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo_mysql
COPY src/ /var/www
COPY config/apache/ /etc/apache2/sites-enabled/
