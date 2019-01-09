FROM nginx
LABEL maintainer="d94.zaragoza@gmail.com"
EXPOSE 80/tcp
EXPOSE 80/udp
ARG HUGO_SITE=exampleSite
COPY /${HUGO_SITE}/public/ /usr/share/nginx/html/