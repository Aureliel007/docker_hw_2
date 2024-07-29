#/bin/bash

echo Running container...

docker run --rm -d -p 8000:8000 --name stocks_products django_app:latest