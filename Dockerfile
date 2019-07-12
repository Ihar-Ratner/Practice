FROM centos
RUN yum install -y wget openssl sed &&\
     yum -y autoremove &&\
     yum clean all &&\
     wget http://nginx.org/packages/centos/7/x86_64/RPMS/nginx-1.8.1-1.el7.ngx.x86_64.rpm &&\
     rpm -iv nginx-1.8.1-1.el7.ngx.x86_64.rpm &&\
     yum install git -y
RUN mkdir /var/www &&\
    cd /var/www/ &&\
    wget http://10.5.9.157:8081/nexus/content/repositories/snapshots/test/0.1.0/test.tar.gz &&\
    tar xvf test.tar.gz
COPY default.conf /etc/nginx/conf.d/
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80
