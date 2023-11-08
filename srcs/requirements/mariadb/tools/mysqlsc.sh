#!/bin/bash

service mariadb start


mariadb -e "create database if not exists \`${DATABASE}\`;"

mariadb -e "create user if not exists  \`${USER}\`@'%' IDENTIFIED BY '${USER_PASSWORD}';"

mariadb -e "grant all privileges on \`${DATABASE}\`.* TO \`${USER}\`@'%' IDENTIFIED BY '${USER_PASSWORD}';"

mariadb -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${ROOT_PASSWORD}';"

mariadb -e "FLUSH PRIVILEGES;"

mysqladmin -u root -p$ROOT_PASSWORD shutdown

exec mysqld_safe

sleep 10