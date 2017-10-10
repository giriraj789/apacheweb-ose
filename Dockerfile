FROM centos:7
MAINTAINER RAJ 
EXPOSE 8080
RUN yum install -y httpd && yum clean all -y 
RUN sed -i 's/Listen 80/Listen 8080/' /etc/httpd/conf/httpd.conf && \
    echo "HELLO OSE APACHE WEB SERVER" > /var/www/html/index.html && \
    chmod -R a+rwx /run/httpd /etc/httpd/logs
USER 1001
CMD /bin/bash -c 'echo starting apache web server....; /usr/sbin/httpd -DFORGROUND 
