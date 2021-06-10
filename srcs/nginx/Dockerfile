# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anclarma <anclarma@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/26 15:14:22 by anclarma          #+#    #+#              #
#    Updated: 2021/06/10 11:40:44 by anclarma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		alpine:3.12
LABEL		maintainer="anclarma"

# Update
RUN			apk update && apk upgrade

# Install nginx
RUN			apk add --no-cache nginx
RUN			mkdir -p /run/nginx

# Copy confile files
COPY		nginx.conf /etc/nginx/http.d/default.conf
RUN			ln -fs /etc/nginx/http.d/default.conf /etc/nginx/conf.d/default.conf
COPY		cert_file /etc/ssl/certs/ssl.crt
COPY		key_file /etc/ssl/certs/ssl.key

# Start server
CMD			["nginx", "-g", "daemon off;"]

# Ports
EXPOSE		443
