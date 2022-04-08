#FROM alpine:3.13

#RUN apk update
#RUN apk add vim wget php7 php7-fpm php7-common \
	#	php7-session php7-iconv php7-json redis php7-redis \
#		php7-gd php7-curl php7-xml php7-mysqli \
#		php7-imap php7-cgi php7-pdo php7-pdo_mysql \
#		php7-soap php7-xmlrpc php7-posix php7-mcrypt \
#		php7-gettext php7-ldap php7-ctype php7-dom wget php7-phar
#RUN rm -rf /var/cache/apk/*
#RUN mkdir -p /var/www/localhost/wordpress
#RUN chmod -R 777 /var/www/localhost
#RUN addgroup -g 82 -S www-data
#RUN adduser -u 82 -D -S -G www-data www-data
#RUN chown -R www-data:www-data /var/www/localhost/wordpress
#RUN chown -R www-data:www-data /etc/php7

FROM debian:buster

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline
RUN apt-get install -y php-mbstring php-zip php-gd
RUN apt-get install -y php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip

RUN mkdir -p /var/www/localhost/wordpress
RUN chmod -R 777 /var/www/*

COPY srcs/www.conf ./etc/php7/php-fpm.d/www.conf
COPY srcs/start.sh ./
COPY srcs/wp-config.php ./
COPY srcs/config.inc.php ./
COPY srcs/default ./
COPY srcs/info.php ./

#RUN mkdir -p /data/mysql
#RUN chown -R mysql:mysql /data/mysql

EXPOSE 9000

CMD ["sh", "start.sh"]
#CMD ["mariadb", "-g", "mysqld;"]

#CMD bash /start.sh
#ENTRYPOINT ["nginx", "-g", "daemon off;"]

