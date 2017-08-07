FROM daocloud.io/speedx/mall-image

WORKDIR /code
COPY . /code
RUN chmod 400 /code/id_rsa
RUN npm rebuild
RUN npm install

EXPOSE 4030
EXPOSE 4000
