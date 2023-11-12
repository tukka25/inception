#! /bin/bash
echo "[mysqld]" >> /etc/mysql/my.cnf
echo "bind-address=0.0.0.0" >> /etc/mysql/my.cnf
mysqld_safe &
mysql_pid=$!
sleep 10
chown -R mysql:mysql $MDB_VOLUME
# echo $DB
mysql -u root -e "CREATE DATABASE $DB_NAME;\
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';\
FLUSH PRIVILEGES;"
wait $mysql_pid