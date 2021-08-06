FROM ubuntu:latest
RUN apt install nginx  -y
RUN apt install vim -y
WORKDIR /var/www/html
ENTRYPOINT ["vim"]
CMD ["-D","FORCEGROUND"]
