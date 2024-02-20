FROM amazonlinux:2023
RUN yum update -y
RUN yum install -y wget
RUN yum install unzip -y
RUN yum install -y httpd
WORKDIR /var/www/html
RUN wget https://github.com/werkmanne/fitapp-website/archive/refs/heads/main.zip
RUN unzip main.zip
RUN unzip /var/www/html/fitapp-website-main/fitapp-webstie.zip
RUN rm -rf main.zip fitapp-website-main
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
~                                                                                                                       
