SRCS = srcs/docker-compose.yml

all :
	docker-compose -f ${SRCS} up -d --build
down :
	docker-compose -f ${SRCS} down
clean : 
	docker-compose -f ${SRCS} down --rmi all --volumes

fclean : clean
	docker system prune
remove : fclean 
	sudo rm -r /home/hfanzaou/data/wordpress/* 
	sudo rm -r /home/hfanzaou/data/mariadb/*

re : fclean all
