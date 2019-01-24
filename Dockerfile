FROM nginx:1.14.2-alpine

EXPOSE 80

COPY default.conf.tmpl /etc/nginx/conf.d/default.conf.tmpl
COPY proxy_params.tmpl /etc/nginx/proxy_params.tmpl
COPY nginx.conf.tmpl /etc/nginx/nginx.conf.tmpl
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
