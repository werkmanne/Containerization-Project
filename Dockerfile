FROM amazonlinux:2023
RUN yum update -y
RUN yum install -y wget
RUN yum install unzip -y
RUN yum install -y httpd
WORKDIR cd /var/www/html
RUN wget https://github.com/werkmanne/ovo-bicycle-website/archive/refs/heads/main.zip
RUN unzip main.zip
RUN cp -r ovo-bicycle-website-main/* /var/www/html/
RUN rm -rf ovo-bicycle-website-main main.zip
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
~                                                                                                                       
