# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anclarma <anclarma@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/26 15:06:10 by anclarma          #+#    #+#              #
#    Updated: 2021/06/11 23:36:27 by anclarma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

up:	env_prep
	docker-compose -f srcs/docker-compose.yml up --build -d

down:
	docker-compose -f srcs/docker-compose.yml down

env_prep:
	sudo sed -i "1i\127.0.0.1\tanclarma.42.fr" /etc/hosts

.PHONY:	up down clean
