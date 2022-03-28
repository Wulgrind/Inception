FROM debian:buster

RUN apt-get update
RUN apt-get install -y mariadb-server
#RUN apt-get install -y vim

COPY srcs/start.sh ./

#RUN mkdir -p /data/mysql
#RUN chown -R mysql:mysql /data/mysql
CMD ["sh", "start.sh"]
#CMD ["mariadb", "-g", "mysqld;"]

#CMD bash /start.sh
#ENTRYPOINT ["nginx", "-g", "daemon off;"]

