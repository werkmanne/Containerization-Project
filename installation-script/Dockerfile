FROM amazonlinux:2023
RUN sudo su
RUN yum update -y
RUN yum install -y httpd
WORKDIR /var/www/html
RUN wget https://github.com/werkmanne/fitapp-website/archive/refs/heads/main.zip
RUN unzip main.zip
RUN unzip /var/www/html/fitapp-website-main/fitapp-webstie.zip
RUN rm -rf main.zip fitapp-website-main
EXPOSE 80 443
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]                                                                                                     
