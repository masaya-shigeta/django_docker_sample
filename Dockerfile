FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir -p /var/www/webapp
WORKDIR /var/www/webapp
ADD requirements.txt /var/www/webapp/
RUN pip install -r requirements.txt
ADD . /var/www/webapp/
