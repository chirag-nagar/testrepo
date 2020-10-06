FROM centos:latest

RUN yum install sudo -y
RUN yum install httpd -y
COPY web.html /var/www/html/
CMD /usr/sbin/httpd -k start
# CMD  sudo service httpd start
EXPOSE 80
