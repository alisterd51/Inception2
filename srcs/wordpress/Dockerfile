# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anclarma <anclarma@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/26 15:14:22 by anclarma          #+#    #+#              #
#    Updated: 2021/06/01 00:29:41 by anclarma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster
LABEL		maintainer="anclarma"

# Update
RUN			apt update && apt -y upgrade

# Install php
RUN			apt -y install php7.3 php7.3-fpm php-mysqli

# Copy confile files
RUN			mkdir -p /run/php
COPY		entrypoint-wordpress.sh /entrypoint-wordpress.sh
RUN			chmod +x /entrypoint-wordpress.sh
COPY		www.conf /etc/php/7.3/fpm/pool.d/www.conf

WORKDIR		/var/www/html

# Start server
ENTRYPOINT	["/entrypoint-wordpress.sh"]

# Ports
EXPOSE		9000
