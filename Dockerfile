FROM nginx

RUN rm -rf /etc/nginx/nginx.conf

RUN rm -rf /etc/nginx/conf.d/default.conf

RUN rm -rf /etc/nginx/conf.d/examplessl.conf

COPY conf/nginx.conf /etc/nginx
