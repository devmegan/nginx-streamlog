FROM debian:buster-slim

RUN apt-get update
RUN apt-get install -y nginx curl

RUN curl https://raw.githubusercontent.com/devmegan/nginx-streamlog/main/templates/index.html > /var/www/html/index.html

RUN rm /var/log/nginx/access.log && ln -s /dev/stdout /var/log/nginx/access.log
RUN rm /var/log/nginx/error.log && ln -s /dev/stderr /var/log/nginx/error.log

ENTRYPOINT ["/usr/sbin/nginx"]

CMD ["-g", "daemon off;"]

