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

up:
	docker-compose -f srcs/docker-compose.yaml up --build -d

down:
	docker-compose -f srcs/docker-compose.yaml down

.PHONY:	up down
