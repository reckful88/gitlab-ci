# mall.speedx.com

## Dev
### nginx configurations

folder structure
```
nginx
  |_ nginx.conf // loads ./speedx/*.conf
  |_ ...
  |_ snippets
      |_ gzip
  |_ speedx
      |_ mall.conf
      |_ ...
      |_ proxies
          |_ mall
          |_ mall.resources
          |_ mall.ws
```

<details>
  <summary>mall.conf</summary>
  ```
  ####
  ## mallresources.speedx.com
  ####
  server {
    listen 80;
    server_name mallresources.speedx.com;
    client_max_body_size 100m;

    charset utf-8;
    location / {
      include snippets/gzip;
      include speedx/proxies/mall.resources;
    }
  }

  server {
    listen       443;
    server_name  mallresources.speedx.com;

    ssl     on;
    ssl_certificate   /usr/local/etc/nginx/ssl/speedx_com.crt;
    ssl_certificate_key  /usr/local/etc/nginx/ssl/speedx_com.key;

    client_max_body_size 100m;

    charset utf-8;
    location / {
      include snippets/gzip;
      include speedx/proxies/mall.resources;
    }
  }

  ####
  ## malldev.speedx.com
  ####
  server {
    listen 80;
    server_name malldev.speedx.com;
    client_max_body_size 100m;

    charset utf-8;
    include speedx/proxies/mall;
    include speedx/proxies/mall.ws;
    location / {
      include snippets/gzip;
      root /Users/Leto/Beasts/FE/mall.speedx.com/;
      try_files $uri $uri/index.html @proxy_to_mall;
    }
  }

  server {
    listen       443;
    server_name  malldev.speedx.com;

    ssl     on;
    ssl_certificate   /usr/local/etc/nginx/ssl/speedx_com.crt;
    ssl_certificate_key  /usr/local/etc/nginx/ssl/speedx_com.key;

    client_max_body_size 100m;

    charset utf-8;
    include speedx/proxies/mall;
    include speedx/proxies/mall.ws;
    location / {
      include snippets/gzip;
      root /Users/Leto/Beasts/FE/mall.speedx.com/;
      try_files $uri $uri/index.html @proxy_to_mall;
    }
  }
  ```
</details>
<details>
  <summary>snippets/gzip</summary>
  ```
  gzip on;
  gzip_disable "msie6";

  gzip_comp_level 6;
  gzip_min_length 1100;
  gzip_buffers 16 8k;
  gzip_proxied any;
  gzip_types
    text/plain
    text/css
    text/js
    text/xml
    text/javascript
    application/javascript
    application/x-javascript
    application/json
    application/xml
    application/rss+xml
    image/svg+xml;
  ```
</details>

<details>
  <summary>proxies/mall</summary>
  ```
  location @proxy_to_mall {
    proxy_read_timeout 86400;
    proxy_pass  http://127.0.0.1:4000;
    proxy_set_header Host $host;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
  }
  ```
</details>

<details>
  <summary>proxies/mall.resources</summary>
  ```
  proxy_read_timeout 86400;
  proxy_pass  http://127.0.0.1:4001;
  proxy_set_header Host $host;
  proxy_set_header X-Real-IP $remote_addr;
  proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
  ```
</details>
<details>
  <summary>proxies/mall.ws</summary>
  ```
  location /ws {
    proxy_pass http://localhost:4000;
    proxy_redirect off;
    proxy_http_version 1.1;
    proxy_set_header Upgrade $http_upgrade;
    proxy_set_header Connection "upgrade";
  }
  ```
</details>

with configurations above properly set, execute these lines in terminal
```
// for mallresources.speedx.com
sudo chown -vhR nobody:nobody /usr/local/var/run/nginx

sudo nginx -s reopen
```

### hosts
`sudo vim /etc/hosts/`, add line `127.0.0.1 malldev.speedx.com mallresources.speedx.com`


### proxy bypass

* using Surge or whatever to manager system proxy settings:
  add `malldev.speedx.com mallresources.speedx.com` to *Bypass proxy*
* not using Surge or whatever to manager system proxy settings:
  *System Preferences* -> *Network* -> *Advanced...* -> *Proxies*
  add `malldev.speedx.com mallresources.speedx.com` to *Bypass proxy settings for these Hosts & Domains:* textarea

