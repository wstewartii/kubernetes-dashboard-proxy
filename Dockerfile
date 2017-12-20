FROM nginx
COPY default.conf /etc/nginx/conf.d/
COPY nginx.conf.tmpl /etc/nginx/nginx.conf
COPY entrypoint.sh /usr/bin/entrypoint.sh
