FROM ubuntu:latest
RUN apt install update -y
RUN apt install nginx -y
RUN apt install vim -y
WORKDIR /var/www/html
EXPOSE 80
ADD ./index.html /var/www/html/
ENTRYPOINT ["nginx"]
CMD ["-D","FOREGROUND"]
