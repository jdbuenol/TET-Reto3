FROM ubuntu:22.10

RUN apt-get update
RUN apt-get install -y apache2
RUN a2enmod proxy
RUN a2enmod proxy_http
RUN a2enmod proxy_balancer
RUN a2enmod lbmethod_byrequests
COPY ./000-default.conf /etc/apache2/sites-available/000-default.conf

EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
