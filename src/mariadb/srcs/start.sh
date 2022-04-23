/usr/bin/mysql_install_db --user=root --basedir='/usr' --datadir='/var/lib/mysql'
/usr/bin/mysqld --user=root --datadir='/var/lib/mysql' &
sleep 2

mysql -e "CREATE DATABASE IF NOT EXISTS \`$MYSQL_NAME\` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;"
mysql -e "CREATE USER IF NOT EXISTS \`$MYSQL_USER\` IDENTIFIED BY '$MYSQL_PASSWORD';"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO \`$MYSQL_USER\` WITH GRANT OPTION;"
mysql -e "DELETE FROM mysql.user WHERE User='';"
mysql -e "DROP DATABASE test;"
mysql -e "DELETE FROM DB WHERE Db='test' OR Db='test/_%';"
mysql -e "UPDATE USER set plugin='' WHERE User='root';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'password';"
mysql -e "FLUSH PRIVILEGES;"

pkill mysqld

/usr/bin/mysqld --user=root --datadir=/var/lib/mysql