FROM library/mysql
COPY config/ /home/config
COPY config/concat.cnf /etc/mysql/conf.d
RUN chmod -R 777 /home/config/ \
 	&&/home/config/updateDatabase.sh