FROM python:3.11.4
ENV PYTHONBUFFERED 1
WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY . /app

CMD python manage.py runserver 127.0.0.1:8000
