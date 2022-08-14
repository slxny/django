FROM python:latest
WORKDIR /usr/src/app
# will need to bind ports from host to the container (-p 127.0.0.1:8080:8080)
EXPOSE 8000
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . . 

# docker run -p 8000:8000 -it quay.io/slxny/django:4 bash
# django-admin startproject mysite
# cd mysite
# python manage.py runserver 0.0.0.0:8000


