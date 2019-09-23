FROM debian:9

RUN	apt-get update && apt install -y apache2 curl php
	

EXPOSE 80 443
ENTRYPOINT ["/usr/sbin/apache2ctl", -D, FOREGROUND"]
	

