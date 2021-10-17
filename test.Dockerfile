from ubuntu

RUN apt-get update -y
RUN apt-get install nginx -y
RUN service nginx restart