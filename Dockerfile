FROM ubuntu:latest
DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install apache2 -y
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
EXPOSE 80
ADD . /var/www/html
