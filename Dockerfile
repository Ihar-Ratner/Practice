# FROM centos
# RUN yum install -y wget openssl sed &&\
#     yum -y autoremove &&\
#     yum clean all &&\
#     wget http://nginx.org/packages/centos/7/x86_64/RPMS/nginx-1.8.1-1.el7.ngx.x86_64.rpm &&\
#     rpm -iv nginx-1.8.1-1.el7.ngx.x86_64.rpm
# CMD ["nginx", "-g", "daemon off;"]
# EXPOSE 80

FROM nginx
COPY index.html /usr/share/nginx/html/