FROM centos:7
LABEL maintainer=dockergiri@hotmail.com 
EXPOSE 8080
RUN yum install -y httpd && yum clean all -y 
RUN sed -i 's/Listen 80/Listen 8080/' /etc/httpd/conf/httpd.conf && \
    echo "HELLO OSE APACHE WEB SERVER" > /var/www/html/index.html && \
    chmod -R a+rwx /run/httpd /etc/httpd/logs
USER 1001
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-DFOREGROUND"] 
