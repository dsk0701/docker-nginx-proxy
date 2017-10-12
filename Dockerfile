FROM jwilder/nginx-proxy

RUN mkdir -p /etc/nginx/vhost.d \
    && { \
      echo 'server_tokens off;'; \
      echo 'client_max_body_size 100m;'; \
    } > /etc/nginx/vhost.d/lgtm.mixin.tech \
    && { \
      echo 'allow 127.0.0.1;'; \
      echo 'allow 39.110.203.177;'; \
      echo 'allow 54.88.0.0/14;'; \
      echo 'allow 52.86.0.0/15;'; \
      echo 'allow 52.220.0.0/15;'; \
      echo 'deny all;'; \
    } > /etc/nginx/vhost.d/lgtm.mixin.tech_location

