docker build -t belun/mysql ./mariadb &&\
docker create -v /var/lib/mysql --name belun_mysql_data  belun/mysql /bin/true
docker pull wordpress
docker create -v /usr/src/wordpress -v /var/www/html --name belun_wordpress_data  wordpress /bin/true
docker-compose up
