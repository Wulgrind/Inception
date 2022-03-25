FROM debian:buster

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y mariadb-server mariadb-client
RUN apt-get install -y php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline
RUN apt-get install -y php-mbstring php-zip php-gd
RUN apt-get install -y php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip

RUN userdel mysql
RUN useradd -u 999 mysql
#RUN mkdir -p /data/mysql
#RUN chown -R mysql:mysql /data/mysql

CMD ["mariadb", "-g", "mysqld;"]

#CMD bash /start.sh
#ENTRYPOINT ["nginx", "-g", "daemon off;"]

