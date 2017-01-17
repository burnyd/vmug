FROM ubuntu:14.04
MAINTAINER Daniel Hertzberg
RUN apt-get update -y && apt-get install -y -q python-all python-pip nginx git
RUN pip install Flask 
RUN git clone https://github.com/burnyd/vmug.git /opt/vmug/
 
RUN mv /opt/vmug/nginx.conf /etc/nginx/nginx.conf 

RUN service nginx stop && service nginx start

CMD ["python", "/opt/vmug/dockervmug.py"]
 
dockervmug.py
EXPOSE 5000 5001
WORKDIR /opt/



