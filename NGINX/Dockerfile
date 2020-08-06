FROM nginx:latest

WORKDIR /etc/nginx/
RUN apt update -y
RUN apt install openssl -y
RUN rm ./conf.d/default.conf
#COPY . sites-available/
COPY . conf.d/
#RUN ln -s /etc/nginx/sites-available/reverse_proxy.conf sites-enabled/
#RUN /etc/init.d/nginx reload