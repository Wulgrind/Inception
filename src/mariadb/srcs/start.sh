#mysql_install_db --defaults-file=~/.my.cnf

#userdel mysql
#useradd -u 999 mysql
#mysql_install_db

service mysql start
echo "CREATE DATABASE IF NOT EXISTS \`$MYSQL_NAME\` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;" | mysql -u root
echo "CREATE USER IF NOT EXISTS \`$MYSQL_USER\` IDENTIFIED BY '$MYSQL_PASSWORD';" | mysql -u root
echo "GRANT ALL PRIVILEGES ON *.* TO \`$MYSQL_USER\` WITH GRANT OPTION;" |mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root


#echo "GRANT ALL ON *.* TO 'quentin'@'localhost' IDENTIFIED BY '123'" | mysql -u root
#echo "FLUSH PRIVILEGES;" | mysql -u root

#echo FLUSH PRIVILEGES;

#sleep infinity

service mysql stop

mysqld
#exec mysqld

#service mysql restart
#exec /etc/init.d/mysqld
#exec mysqld --user=mysql --console