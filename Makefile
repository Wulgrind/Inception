all:
	cd srcs && docker-compose up --build

clean:
	cd srcs && docker-compose down --volumes

re: clean all

fclean: clean
	sudo rm -rf /home/qbrillai.42.fr/data/wordpress/*
	sudo rm -rf /home/qbrillai.42,fr/data/mariadb/*
