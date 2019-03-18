FROM webdevops/php-apache:alpine-php7

ADD install-swoole.sh /root/

RUN sh /root/install-swoole.sh

RUN sed -i '$a\extension=swoole.so' /opt/docker/etc/php/php.ini
