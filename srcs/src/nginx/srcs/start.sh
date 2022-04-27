#SSL

#mkdir /etc/nginx/ssl
#openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/localhost.pem -keyout /etc/nginx/ssl/localhost.key -subj "/C=FR/ST=Nice/L=Nice/O=42 School/OU=quentin/CN=localhost"

#NGINX

#mkdir var/www/localhost
#mv ./default etc/nginx/sites-available
#ln -s etc/nginx/sites-available/default etc/nginx/sites-enabled

chown -R www-data /var/www/*
chmod -R 755 /var/www/*

chmod 660 /var/www/html/phpmyadmin/config.inc.php
chown -R www-data:www-data /var/www/html/phpmyadmin

cp info.php /var/www/html/info.php
#chmod 660 /var/www/html/phpmyadmin/config.inc.php
#chown -R www-data:www-data /var/www/html/phpmyadmin

#chmod 755 /var/www/html/wordpress
#chmod 640 /var/www/html/wordpress/*
#chmod 440 /var/www/html/wordpress/wp-config.phpchown -R www-data:www-data /var/www/html/wordpress

service nginx stop
service nginx start
sleep infinity
#sleep infinity
