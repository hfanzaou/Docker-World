FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y

RUN apt-get install apt-utils -y

RUN apt-get install mariadb-server -y

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN mkdir /var/run/mysqld/

RUN chown mysql:mysql /var/run/mysqld/

COPY tools/mysqlsc.sh /

CMD ["sh", "/mysqlsc.sh"]
