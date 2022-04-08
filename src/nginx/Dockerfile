FROM debian:buster

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y nginx
RUN apt-get install openssl


COPY srcs/default /etc/nginx/conf.d/default.conf
COPY srcs/info.php var/www/html

RUN mkdir var/www/localhost
#RUN mv ./default etc/nginx/sites-available
#RUN ln -s etc/nginx/sites-available/default etc/nginx/sites-enabled
RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/qbrillai.42.fr.pem -keyout /etc/nginx/ssl/qbrillai.42.fr.key -subj "/C=FR/ST=Nice/L=Nice/O=42 School/OU=quentin/CN=qbrillai.42.fr"

RUN chown -R www-data /var/www/*
RUN chmod -R 755 /var/www/*


#RUN chmod 660 /var/www/html/phpmyadmin/config.inc.php
#RUN chown -R www-data:www-data /var/www/html/phpmyadmin

#RUN chmod 755 /var/www/html/wordpress
#RUN chmod 640 /var/www/html/wordpress/*
#RUN chmod 440 /var/www/html/wordpress/wp-config.php
#RUN chown -R www-data:www-data /var/www/html/wordpress
#COPY srcs/default /etc/nginx/conf.d/default.conf


#CMD ["sh", "start.sh"]
CMD ["nginx", "-g", "daemon off;"]


#CMD bash /start.sh
#ENTRYPOINT ["nginx", "-g", "daemon off;"]

