service mysql start 

echo "Copiando banco remoto...";
mysqldump --single-transaction -uauryn -pauryn -h 192.168.1.51 photobooksmall >> /home/photobooksmall.sql
echo "Banco copiado!\n";

echo "Excluindo e recriando banco local...";
mysql -proot -uroot --execute="drop database if exists photobooksmall;"
mysql -proot -uroot --execute="create database photobooksmall;"
echo "ok!\n";

echo "Imporando banco novo... ";
mysql -proot -uroot photobooksmall < /home/photobooksmall.sql


echo "destivando modo estrito"
mysql -proot -uroot --execute="SET @@global.sql_mode= '';"

echo "Tudo pronto!\n";

service mysql stop
sleep 10;