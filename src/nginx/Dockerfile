FROM alpine:3.13

RUN apk update && apk upgrade
RUN apk add vim nginx openssl
RUN rm -rf /var/cache/apk/*
RUN mkdir -p /run/nginx
RUN mkdir /var/www/localhost/html
RUN mkdir etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/qbrillai.42.fr.pem -keyout /etc/nginx/ssl/qbrillai.42.fr.key -subj "/C=FR/ST=Nice/L=Nice/O=42 School/OU=quentin/CN=qbrillai.42.fr"

COPY ./srcs/default.conf /etc/nginx/http.d/default.conf
COPY ./srcs/index.html /var/www/localhost/html/index.html

CMD [ "nginx", "-g", "daemon off;" ]
