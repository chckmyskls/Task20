FROM nginx:alpine
COPY ./usr-share-nginx-html/. /usr/share/nginx/html 
COPY ./etc-nginx-conf/aliaksandrsite.ddns.net.conf /etc/nginx/conf.d/default.conf
COPY ./etc-nginx-conf/upstreams.conf /etc/nginx/conf.d/
COPY ./ssl /etc/ssl
COPY ./etc-nginx-conf/nginx.conf /etc/nginx/
RUN ["nginx"]
