FROM ubuntu:latest
RUN apt-get httpd -y
RUN apt-get htop -y
WORKDIR /var/www/html
ENTRYPOINT ["httpd","htop"]
CMD ["-D","FORCEGROUND"]
