
echo "[mysqld]" >> /etc/mysql/my.cnf
echo "bind-address=0.0.0.0" >> /etc/mysql/my.cnf

# (mysqld_safe &) && sleep 3 && echo "ff"
# mysql_install_db --datadir=/var/lib/mysql
# sleep 10
mysqld_safe &
mysql_pid=$!
sleep 10
export USERNAME=tukka DB_NAME=wp_tuk PASSWORD=1234
mysql -u root -e "CREATE DATABASE $DB_NAME;\
GRANT ALL ON $DB_USER.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';\
FLUSH PRIVILEGES;"
wait $mysql_pid
# echo -ne '\n'
#mariadb
#CREATE DATABASE wp_tuk;
#GRANT ALL ON wp_tuk.* TO 'wp_user'@'%' IDENTIFIED BY '1234';
#FLUSH PRIVILEGES;
#exit;
# GRANT ALL PRIVILEGES ON wordpress_db.* TO 'wordpress_user'@'localhost' IDENTIFIED BY 'password';