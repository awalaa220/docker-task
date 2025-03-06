FROM ubuntu 
WORKDIR /app
COPY index.html .
RUN apt update -y
RUN apt install nginx -y
RUN sed -i 's/listen 80 default_server;/listen 8080;/' /etc/nginx/sites-available/default
RUN mv index.html /var/www/html/index.nginx-debian.html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
