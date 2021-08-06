FROM ubuntu:latest
RUN apt-get install httpd -y
RUN apt-get install htop -y
WORKDIR /var/www/html
ENTRYPOINT ["htop"]
CMD ["-D","FORCEGROUND"]
