#mysql_install_db --defaults-file=~/.my.cnf

#userdel mysql
#useradd -u 999 mysql
service mysql start

#echo "GRANT ALL ON *.* TO 'quentin'@'localhost' IDENTIFIED BY '123'" | mysql -u root
#echo "FLUSH PRIVILEGES;" | mysql -u root

#echo FLUSH PRIVILEGES;

#service mysql restart
sleep infinity
#exec mysqld --user=mysql --console