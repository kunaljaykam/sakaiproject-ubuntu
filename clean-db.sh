# drop sakaidb database if it exists
 if [ -d /var/lib/mysql/sakaidb ]; then
   sudo mysql -u root -proot -Bse "drop database sakaidb;"
 fi
 

sudo mysql -u root -proot -Bse "create database sakaidb  default character set utf8; create user 'sakaiuser'@'localhost' identified by 'sakaipassword';grant all on *.* to 'sakaiuser'@'localhost';
  create user 'sakaiuser'@'127.0.0.1' identified by 'sakaipassword';
  grant all on *.* to 'sakaiuser'@'127.0.0.1';
  flush privileges;"


