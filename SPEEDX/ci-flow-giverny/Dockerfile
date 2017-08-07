FROM python:3.4
RUN wget http://download.osgeo.org/geos/geos-3.4.2.tar.bz2
RUN tar xjf geos-3.4.2.tar.bz2
WORKDIR geos-3.4.2
RUN ./configure
RUN make && make install
ENV LD_LIBRARY_PATH /usr/local/lib/

ENV PYTHONUNBUFFERED 1

RUN mkdir /code
WORKDIR /code

ADD id_rsa /code/
RUN chmod 600 /code/id_rsa
RUN echo "\tIdentityFile /code/id_rsa\n" >> /etc/ssh/ssh_config
RUN echo "Host git.speedx.com\n" >> /etc/ssh/ssh_config
RUN echo "\tStrictHostKeyChecking no\n" >> /etc/ssh/ssh_config

ADD requirements.txt /code/requirements.txt
RUN pip install -r requirements.txt -i http://pypi.douban.com/simple/ --trusted-host pypi.douban.com
RUN easy_install -U cffi
RUN pip install gunicorn -i http://pypi.douban.com/simple/ --trusted-host pypi.douban.com
ADD . /code/
RUN mkdir /code/logs && touch /code/logs/giverny.log

EXPOSE 8201
