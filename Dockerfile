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
RUN chmod app/start.sh
