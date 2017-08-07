FROM node 

WORKDIR /code/

RUN echo "deb http://mirrors.163.com/debian/ stable main" > /etc/apt/sources.list \
        && echo "deb-src http://mirrors.163.com/debian/ stable main" >> /etc/apt/sources.list

RUN apt-get update && apt-get install nginx -y

COPY ./manager /etc/nginx/sites-enabled/
COPY ./nginx.conf /etc/nginx/
RUN rm -rf /etc/nginx/sites-enabled/default

ADD id_rsa /code/
RUN chmod 700 /code/id_rsa
RUN echo "\tIdentityFile /code/id_rsa\n" >> /etc/ssh/ssh_config
RUN echo "Host git.speedx.com\n" >> /etc/ssh/ssh_config
RUN echo "\tStrictHostKeyChecking no\n" >> /etc/ssh/ssh_config

RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm install immutability-helper --save
ADD package.json /code/
RUN cnpm install
ADD ./ /code/
RUN npm run deploy:prod

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
