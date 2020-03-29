FROM centos:7

RUN yum -y install epel-release yum-utils
RUN yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
RUN yum-config-manager --enable remi-php73
RUN yum -y install php
RUN yum -y install httpd

COPY index.php /var/www/html/

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/httpd", "-D",  "FOREGROUND" ]