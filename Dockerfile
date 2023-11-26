# Používáme oficiální Python obraz jako základní obraz
FROM python:3.8

# Nastavíme pracovní adresář ve stroji Docker
WORKDIR /app

# Zkopírujeme soubory potřebné pro instalaci závislostí
COPY ./requirements.txt /app/requirements.txt

# Nainstalujeme závislosti
RUN pip install --no-cache-dir -r requirements.txt

# Zkopírujeme zbytek kódu do pracovního adresáře
COPY . /app

# Nastavíme proměnnou prostředí pro Django
ENV DJANGO_SETTINGS_MODULE=Server.settings

# Vytvoříme databázi a provedeme migrace
RUN python Server/manage.py migrate

# Exponujeme port, na kterém bude běžet aplikace
EXPOSE 8000

# Spustíme server při startu kontejneru
CMD ["python", "Server/manage.py", "runserver", "0.0.0.0:8000"]
