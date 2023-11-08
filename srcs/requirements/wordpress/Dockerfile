FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y

RUN apt-get install apt-utils -y

RUN apt-get install sudo -y

RUN apt-get install wget -y

RUN apt-get install php7.4 php-fpm php-mysql mariadb-client -y

RUN wget https://wordpress.org/wordpress-6.3.tar.gz -P /var/www

RUN cd /var/www && tar -xzf wordpress-6.3.tar.gz && rm wordpress-6.3.tar.gz

RUN chmod -R 755 /var/www/

RUN chown -R www-data:www-data /var/www/

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp


COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

COPY tools/cli-config.sh /var/www/wordpress

RUN chmod +x /var/www/wordpress/cli-config.sh

RUN mkdir /run/php/

WORKDIR /var/www/wordpress/

ENTRYPOINT ["sh", "cli-config.sh"]
#WORKDIR /
#ENTRYPOINT ["/usr/sbin/php-fpm7.4", "-F", "-R"]






