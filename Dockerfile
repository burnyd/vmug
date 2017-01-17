FROM ubuntu:14.04
MAINTAINER Daniel Hertzberg
RUN apt-get update -y
RUN apt-get install -y -q python-all python-pip nginx git
RUN pip install Flask
RUN mv /opt/nginx.conf /etc/nginx/nginx.conf
RUN service nginx restart
RUN git clone https://github.com/burnyd/vmug.git /opt/
RUN python /opt/dockervmug.py &
EXPOSE 5000 5001
WORKDIR /opt/



