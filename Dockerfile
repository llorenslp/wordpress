FROM debian:9

RUN	apt-get update && apt install -y apache2 curl php php-mysql
RUN	cd /var/www/
RUN	curl https://wordpress.org/latest.tar.gz | tar -xz
RUN	rm -rf html/
RUN	mv wordpress/ html/ && chown -R root:root html/

EXPOSE 80 443
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
