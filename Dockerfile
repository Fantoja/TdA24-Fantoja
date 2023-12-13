# syntax=docker/dockerfile:1

FROM python:3.10-buster

WORKDIR /app

# Instalace pipenv
RUN pip install pipenv

# Kopírování souborů pro instalaci závislostí
COPY Pipfile Pipfile
COPY Pipfile.lock Pipfile.lock

# Kopírování zbylých souborů do kontejneru
COPY . .

# Exponování portu 
EXPOSE 5000

# Spuštění startovacího skriptu
RUN chmod python3 -m flask run --host=0.0.0.0 --port=5000 app.py
