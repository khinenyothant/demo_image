FROM ubuntu:18.04  
LABEL maintainer="test@gmail.com" 
RUN  apt-get -y update && apt-get -y install nginx
COPY todo-list/default /etc/nginx/sites-available/default
COPY todo-list/index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]