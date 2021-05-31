# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anclarma <anclarma@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/26 15:14:22 by anclarma          #+#    #+#              #
#    Updated: 2021/05/30 22:07:08 by anclarma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		alpine:3.12
LABEL		maintainer="anclarma"

# Update
RUN			apk update && apk upgrade

# Install php
RUN			apk add --no-cache php php-fpm php-opcache php-mysqli

# Copy confile files
COPY		entrypoint-wordpress.sh /entrypoint-wordpress.sh
RUN			chmod +x /entrypoint-wordpress.sh
COPY		wordpress.conf /etc/php7/php-fpm.d/wordpress.conf

WORKDIR		/var/www/html

# Start server
ENTRYPOINT	["/entrypoint-wordpress.sh"]

# Ports
EXPOSE		9000
