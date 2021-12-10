FROM centos
LABEL name=minku
RUN dnf install httpd -y
COPY index.html /var/www/html/
COPY app.js /var/www/html/
EXPOSE 80
ENTRYPOINT httpd -DFOREGROUND
