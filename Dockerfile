FROM centos
LABEL name=ashutoshh
RUN dnf install httpd -y
COPY index.html /var/www/html/
EXPOSE 80
ENTRYPOINT httpd -DFOREGROUND
