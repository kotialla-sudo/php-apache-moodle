FROM ubi8/s2i-base:rhel8.4

# This image provides an Apache+PHP environment for running PHP
# applications.

EXPOSE 8080
EXPOSE 8443

# Description
# This image provides an Apache 2.4 + PHP 7.4 environment for running PHP applications.
# Exposed ports:
# * 8080 - alternative port for http

ENV PHP_VERSION=7.4 \
    PHP_VER_SHORT=74 \
    NAME=php

RUN wget https://www.php.net/distributions/php-7.4.25.tar.gz
RUN tar -xvzf php-7.4.25.tar.gz
RUN rm php-7.4.25.tar.gz
