FROM python:3.11

COPY app/ /app

COPY requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 8000

RUN python manage.py migrate

ENTRYPOINT ["/bin/sh"]

CMD ["-c", "python manage.py runserver 0.0.0.0:8000"]