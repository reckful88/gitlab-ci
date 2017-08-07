FROM python:3.5
ENV PYTHONUNBUFFERED 1
RUN pip install --upgrade cffi
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/requirements.txt
RUN pip install -r requirements.txt -i http://pypi.douban.com/simple/ --trusted-host pypi.douban.com
ADD . /code/
