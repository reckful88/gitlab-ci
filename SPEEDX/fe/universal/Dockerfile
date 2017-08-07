FROM node:5.6.0

WORKDIR /code/

ADD ./ /code/

#RUN apt-get update && apt-get install nginx -y
#RUN apt-get install net-tools -y
#
#COPY ./docker_speedx /etc/nginx/sites-enabled/
#COPY ./nginx.conf /etc/nginx/
#COPY ./private/ /etc/nginx/private/
#RUN rm -rf /etc/nginx/sites-enabled/default

ADD id_rsa /code/
RUN chmod 700 /code/id_rsa
RUN echo "\tIdentityFile /code/id_rsa\n" >> /etc/ssh/ssh_config
RUN echo "Host git.speedx.com\n" >> /etc/ssh/ssh_config
RUN echo "\tStrictHostKeyChecking no\n" >> /etc/ssh/ssh_config

#ADD package.json /code/
#ADD ./webpack/ /code/webpack/

RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm install
RUN npm run build

EXPOSE 3000
CMD npm run start
