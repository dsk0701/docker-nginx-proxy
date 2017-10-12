FROM jwilder/nginx-proxy

RUN mkdir -p /etc/nginx/vhost.d \
    && { \
      echo 'server_tokens off;'; \
      echo 'client_max_body_size 100m;'; \
    } > /etc/nginx/vhost.d/lgtm.mixin.tech

