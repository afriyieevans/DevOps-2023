FROM redhat/ubi8
RUN dnf update -y
RUN dnf install httpd -y
echo "welcome to ezyempire" > /var/www/html/index.html
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]

