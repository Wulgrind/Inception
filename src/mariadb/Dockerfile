FROM debian:buster

#RUN apk -U upgrade && apk add mariadb mariadb-client bash

RUN groupadd -r mysql && useradd -r -g mysql mysql

RUN apt-get update
RUN apt-get install -y mariadb-server
#RUN apt-get install -y vim

RUN mkdir -p /run/mysqld 
RUN mkdir -p /var/lib/mysql
RUN chown -R mysql:mysql /run/mysqld
RUN chown mysql:mysql var/run/mysqld 
RUN chown mysql:mysql /var/lib/mysql
RUN mysql_install_db --user=mysql --datadir='/var/lib/mysql'
#RUN mariadb-install-db --user=mysql --datadir='/var/lib/mysql'

COPY ./srcs/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf
RUN chown -R mysql:mysql /etc/my.cnf.d
#USER mysql

COPY srcs/start.sh ./

VOLUME /var/lib/mysql
#RUN mkdir -p /data/mysql
#RUN chown -R mysql:mysql /data/mysql
#@CMD ["sh", "start.sh"]
#CMD ["mariadb", "-g", "mysqld;"]

CMD bash /start.sh
#ENTRYPOINT ["nginx", "-g", "daemon off;"]

