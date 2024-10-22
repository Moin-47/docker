FROM ubuntu

RUN apt-get update && apt-get install git apache2 -y

WORKDIR /project

RUN git clone https://github.com/Moin-47/webapp.git

RUN cp -r webapp/* /var/www/html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
