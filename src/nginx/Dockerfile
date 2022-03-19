FROM debian:buster

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y nginx
RUN apt-get install openssl


RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/qbrillai.42.fr.pem -keyout /etc/nginx/ssl/qbrillai.42.fr.key -subj "/C=FR/ST=Nice/L=Nice/O=42 School/OU=quentin/CN=qbrillai.42.fr"

RUN chown -R www-data /var/www/*
RUN chmod -R 755 /var/www/*

COPY srcs/default /etc/nginx/conf.d/default.conf


CMD ["nginx", "-g", "daemon off;"]


#CMD bash /start.sh
#ENTRYPOINT ["nginx", "-g", "daemon off;"]

