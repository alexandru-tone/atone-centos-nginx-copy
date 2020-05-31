FROM centos:7
MAINTAINER alexandru.tone81 <alexandru.tone81@yahoo.com>

RUN yum -y install epel-release
RUN yum -y update
RUN yum -y install nginx

COPY html/index.html /usr/share/nginx/html/index.html

EXPOSE 80

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

