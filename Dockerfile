FROM ubuntu:latest
RUN apt-get install update -y
RUN apt-get install nginx -y
RUN apt-get install vim -y
WORKDIR /var/www/html
EXPOSE 80
ADD ./index.html /var/www/html/
ENTRYPOINT ["nginx"]
CMD ["-D","FOREGROUND"]
