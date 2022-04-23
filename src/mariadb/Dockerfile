FROM alpine:3.13

RUN apk update
RUN apk upgrade
RUN apk add vim mariadb mariadb-client mariadb-common mariadb-server-utils
RUN rm -rf /var/cache/apk/*
RUN mkdir -p /run/mysqld /var/lib/mysql
RUN chown -R mysql /var/lib/mysql
RUN chmod 777 /var/lib/mysql

COPY ./srcs/start.sh ./start.sh
COPY ./srcs/mariadb-server.cnf ./etc/my.cnf.d/my.cnf
COPY ./srcs/mariadb-server.cnf ./etc/mysql/my.cnf

RUN chmod 0444 /etc/mysql/my.cnf
RUN chmod 0444 /etc/my.cnf.d/my.cnf

EXPOSE 3306

CMD [ "ash", "start.sh" ]