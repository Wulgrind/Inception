all:
	cd srcs && docker-compose up -d --build

clean:
	cd srcs && docker-compose down --volumes

re: clean all

fclean: clean
	sudo rm -rf /home/qbrillai/data/wordpress/*
	sudo rm -rf /home/qbrillai/data/mariadb/*
