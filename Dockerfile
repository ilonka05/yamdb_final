FROM python:3.7-slim

LABEL author='ilonka05' version=1

WORKDIR /app

COPY api_yamdb/requirements.txt .

RUN pip3 install -r requirements.txt --no-cache-dir

COPY api_yamdb/ .

CMD ["gunicorn", "api_yamdb.wsgi:application", "--bind", "0:8000" ]