FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update -y
RUN apt install apache2 –y
CMD [“/usr/sbin/apache2ctl”,”-D”,”FOREGROUND”]
EXPOSE 80
WORKDIR /var/www/html
ADD . /var/www/html

