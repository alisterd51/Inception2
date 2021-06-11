# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anclarma <anclarma@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/26 15:06:10 by anclarma          #+#    #+#              #
#    Updated: 2021/05/27 16:08:34 by anclarma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

up:	env_prep
	docker-compose -f srcs/docker-compose.yml up --build -d

down:
	docker-compose -f srcs/docker-compose.yml down

env_prep:
	sudo sed -i "1i\127.0.0.1\tanclarma.42.fr" /etc/hosts
	sudo mkdir -p /home/anclarma/data/db
	sudo mkdir -p /home/anclarma/data/wp
	wget https://fr.wordpress.org/wordpress-5.7.2-fr_FR.tar.gz
	tar -xf wordpress-5.7.2-fr_FR.tar.gz
	sudo mv wordpress/* /home/anclarma/data/wp/.
	rm -rf wordpress-5.7.2-fr_FR.tar.gz wordpress

clean:	down
	sudo rm -rf /home/anclarma/data/db /home/anclarma/data/wp

.PHONY:	up down
