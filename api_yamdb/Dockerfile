FROM python:3.7-slim

LABEL author='ilonka05' version=1

#WORKDIR /app
#
#COPY ../requirements.txt .
#
#RUN pip3 install -r requirements.txt --no-cache-dir
#
#COPY ../api_yamdb/ .
#
#CMD ["gunicorn", "api_yamdb.wsgi:application", "--bind", "0:8000" ]

WORKDIR /app/api_yamdb

COPY . .

RUN pip3 install -r requirements.txt --no-cache-dir

CMD ["gunicorn", "api_yamdb.wsgi:application", "--bind", "0:8000" ]