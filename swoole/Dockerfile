FROM webdevops/php-apache:alpine-php7

RUN echo http://mirrors.ustc.edu.cn/alpine/v3.7/main > /etc/apk/repositories && \
    echo http://mirrors.ustc.edu.cn/alpine/v3.7/community >> /etc/apk/repositories
    RUN apk update && apk upgrade
    RUN apk add m4 autoconf make gcc g++ linux-headers
    RUN pecl install swoole-4.2.1
    RUN docker-php-ext-enable swoole
