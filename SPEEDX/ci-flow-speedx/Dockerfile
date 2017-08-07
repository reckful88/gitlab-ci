FROM node:5.6.0

WORKDIR /code/


ADD ./ /code/

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
