# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anclarma <anclarma@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/26 15:14:22 by anclarma          #+#    #+#              #
#    Updated: 2021/06/09 21:17:25 by anclarma         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM		debian:buster
LABEL		maintainer="anclarma"

# Update
RUN			apt update 2> /dev/null && apt -y upgrade 2> /dev/null

# Install mariadb
RUN			apt -y install mariadb-server 2> /dev/null

# Copy confile files
COPY		entrypoint-mariadb.sh /entrypoint-mariadb.sh
COPY		install_db.sh /install_db.sh
COPY		base.sql /base.sql
RUN			chmod +x /entrypoint-mariadb.sh
RUN			chmod +x /install_db.sh
COPY		my.cnf /etc/mysql/my.cnf

# Start server
ENTRYPOINT	["/entrypoint-mariadb.sh"]

# Ports
EXPOSE		3306
