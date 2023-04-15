FROM debian:11
RUN apt-get update && apt-get install apache2 -y \
 && apt-get install apache2-utils -y && apt-get install php7.4 -y
RUN rm /var/www/html/index.html
COPY index.php /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND