echo "clear_env=false" >> etc/php7/php-fpm.conf
mv ./wp-config.php /var/www/localhost/wordpress/
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp --allow-root core download --path="/var/www/localhost/wordpress/"
mv ./wp-config.php /var/www/localhost/wordpress/
chmod -R 777 /var/www/localhost/wordpress/
sleep 5
wp --allow-root core install --url="$DOMAIN_NAME" --path="/var/www/localhost/wordpress/" --title="Inception" --admin_user=$WP_ADMIN_NAME --admin_password=$WP_ADMIN_PASSWORD --admin_email="test@test.fr"
wp --allow-root user create $WP_USER_NAME "test2@test.fr" --user_pass=$WP_USER_PASSWORD --role='author' --path="/var/www/localhost/wordpress/"

exec php-fpm7 -F -R;