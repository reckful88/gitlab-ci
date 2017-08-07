FROM node:5.6.0

WORKDIR /code/

ADD id_rsa /code/
RUN chmod 600 /code/id_rsa
RUN echo "\tIdentityFile /code/id_rsa\n" >> /etc/ssh/ssh_config
RUN echo "Host git.speedx.com\n" >> /etc/ssh/ssh_config
RUN echo "\tStrictHostKeyChecking no\n" >> /etc/ssh/ssh_config

COPY package.json /code/
RUN sed -i.bak '/postinstall/d' package.json
RUN sed -i.bak '/tetris.git/d' package.json

RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm install


COPY . /code
RUN chmod 400 /code/id_rsa
RUN cnpm install
# RUN cnpm rebuild node-sass

CMD API_BASE=https://small.speedx.com npm run build && API_BASE=https://small.speedx.com npm run start

EXPOSE 4030
EXPOSE 4001
EXPOSE 4000
EXPOSE 3000
