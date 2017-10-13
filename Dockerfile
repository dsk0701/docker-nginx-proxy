FROM jwilder/nginx-proxy

RUN mkdir -p /etc/nginx/vhost.d \
    && { \
      echo 'server_tokens off;'; \
      echo 'client_max_body_size 100m;'; \
      echo 'if ($http_user_agent ~* (.*slack.*)) { proxy_pass http://lgtm.mixin.tech$request_uri; }'; \
    } > /etc/nginx/vhost.d/lgtm.mixin.tech \
    && { \
      echo 'allow 127.0.0.1;'; \
      echo 'allow 192.168.0.0/24;'; \
      echo 'allow 39.110.203.177;'; \
      echo 'deny all;'; \
    } > /etc/nginx/vhost.d/lgtm.mixin.tech_location

      # echo 'if ($http_user_agent ~* (.*slack.*)) { rewrite ^(.*)$ http://lgtm.mixin.tech$request_uri redirect; }'; \
