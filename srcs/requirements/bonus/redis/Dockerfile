FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y

RUN apt-get install redis -y

COPY conf/redis.conf /etc/redis/redis.conf

#RUN mkdir /var/log/redis/
RUN chown -R redis:redis /var/log/

#CMD ["sleep", "infinity"]
ENTRYPOINT ["redis-server", "/etc/redis/redis.conf"]

