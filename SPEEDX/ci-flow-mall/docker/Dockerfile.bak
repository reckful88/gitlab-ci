FROM node:5.6.0

WORKDIR /code/

ADD id_rsa /code/
RUN chmod 600 /code/id_rsa
RUN echo "\tIdentityFile /code/id_rsa\n" >> /etc/ssh/ssh_config
RUN echo "Host git.speedx.com\n" >> /etc/ssh/ssh_config
RUN echo "\tStrictHostKeyChecking no\n" >> /etc/ssh/ssh_config

#RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
COPY ./package.json /code/
RUN sed -i.bak '/postinstall/d' package.json
RUN npm install
