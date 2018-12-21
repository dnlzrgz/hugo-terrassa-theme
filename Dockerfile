FROM nginx
LABEL maintainer="d94.zaragoza@gmail.com"
EXPOSE 80/tcp
EXPOSE 80/udp
COPY /exampleSite/public/ /usr/share/nginx/html/