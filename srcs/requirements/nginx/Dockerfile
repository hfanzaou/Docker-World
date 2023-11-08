FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y 

RUN apt-get install apt-utils -y

RUN apt-get install nginx -y

RUN mkdir  /var/www/wordpress

RUN chown -R $USER:$USER /var/www/wordpress

COPY conf/wordpress /etc/nginx/sites-available/wordpress

COPY conf/*.conf /etc/nginx/snippets/

RUN ln -s /etc/nginx/sites-available/wordpress /etc/nginx/sites-enabled/wordpress

RUN unlink /etc/nginx/sites-enabled/default

RUN mkdir -p /etc/nginx/ssl
RUN apt install openssl -y

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MA/ST=IDF/L=CASABLANCA/O=1337/OU=1337/CN=hfanzaou.42.fr/UID=hfanzaou"

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]

