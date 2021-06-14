#!/bin/sh
#mysql_install_db
#service mysql start
#mysqladmin -u root password $MYSQL_ROOT_PASSWORD
#mysql -e "CREATE USER '${MYSQL_USER}'@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';"
#mysql -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};"
#mysql -e "GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
#mysql -e "FLUSH PRIVILEGES;"
#mysql -u root -p$MYSQL_ROOT_PASSWORD $MYSQL_DATABASE < /base.sql
#service mysql stop
#mysql_install_db --user=root --basedir=/usr --datadir=/var/lib/mysql --defaults-file=/etc/mysql/my.cnf > /dev/null
#exec mysqld --user=root --console
mysql_install_db --user=mysql --datadir="/var/lib/mysql"
# /install_db.sh &
exec mysqld_safe --datadir="/var/lib/mysql"
