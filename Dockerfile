FROM wordpress:5.4

LABEL maintainer="dsperling@smithmicro.com"

ADD uploads.ini /usr/local/etc/php/conf.d/
