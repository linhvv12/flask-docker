FROM ubuntu:latest
RUN apt-get update -y
# RUN apt-get install nginx -y
RUN apt-get install vim -y
RUN apt-get install htop -y
WORKDIR /var/www/html
EXPOSE 80
ADD ./index.html /var/www/html/
ENTRYPOINT ["nginx"]
CMD ["-D","FOREGROUND"]
