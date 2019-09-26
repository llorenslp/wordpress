FROM debian:9

RUN	apt-get update && apt install -y apache2 curl php php-mysql && \
	cd /var/www/ && \
	curl https://wordpress.org/latest.tar.gz | tar -xz && \
	rm -rf html/ && \
	mv wordpress/ html/ && chown -R root:root html/

EXPOSE 80 443
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
