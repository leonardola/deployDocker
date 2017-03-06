FROM php:7.0-apache
COPY config/php.ini /usr/local/etc/php/
RUN yes | pecl install xdebug \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.idekey=\"intellij\"" >> /usr/local/etc/php/conf.d/xdebug.ini \
    && echo "xdebug.remote_port=9000" >> /usr/local/etc/php/conf.d/xdebug.ini \
	&& echo "xdebug.max_nesting_level=200" >> /usr/local/etc/php/conf.d/xdebug.ini
RUN a2enmod rewrite
RUN a2enmod headers
RUN a2enmod ssl
RUN apt-get update && apt-get install -y libmagickwand-6.q16-dev --no-install-recommends \
 && ln -s /usr/lib/x86_64-linux-gnu/ImageMagick-6.8.9/bin-Q16/MagickWand-config /usr/bin \
 && pecl install imagick \
 && echo "extension=imagick.so" > /usr/local/etc/php/conf.d/ext-imagick.ini
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo_mysql
RUN apt-get install -y libc-client-dev libkrb5-dev && rm -r /var/lib/apt/lists/*
RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl \
    && docker-php-ext-install imap
COPY certificado/ /var/www/blog/certificado
COPY config/apache/ /etc/apache2/sites-enabled/
