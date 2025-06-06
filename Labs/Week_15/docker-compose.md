# Работа с Docker Compose

## Какво е Docker Compose?

Docker Compose е инструмент, който ви позволява да дефинирате и стартирате многоконтейнерни Docker приложения. Вместо да стартирате всеки контейнер поотделно с `docker run`, можете да опишете всички услуги, мрежи и томове в YAML файл (`compose.yml`) и да стартирате всичко с една команда.

## Създаване на уеб приложение + база данни чрез Docker Compose

В това упражнение ще изградим Flask приложение, което комуникира с MySQL база, като използваме Docker Compose.

### Стъпка 1: Структура на проекта

Създайте следната структура на проекта:

```
flask-compose-app/
├── app/
│   ├── app.py
│   └── requirements.txt
├── compose.yml
└── Dockerfile
```

### Стъпка 2: Flask приложение

#### `app/app.py`

```python
from flask import Flask
import mysql.connector

app = Flask(__name__)

@app.route('/')
def index():
    try:
        conn = mysql.connector.connect(
            host='db',
            user='root',
            password='rootpass',
            database='testdb'
        )
        return "Успешна връзка с базата!"
    except:
        return "Неуспешна връзка с базата!"

if __name__ == '__main__':
    app.run(host='0.0.0.0')
```

#### `app/requirements.txt`

```
flask
mysql-connector-python
```

### Стъпка 3: Dockerfile

```dockerfile
FROM python:3.8

WORKDIR /app
COPY app/ /app
RUN pip install -r requirements.txt

CMD ["python", "app.py"]
```

### Стъпка 4: `compose.yml`

```yaml
version: '3.8'

services:
  web:
    build: .
    ports:
      - "5000:5000"
    depends_on:
      - db

  db:
    image: mysql:5.7
    environment:
      MYSQL_ROOT_PASSWORD: rootpass
      MYSQL_DATABASE: testdb
    volumes:
      - mysql-data:/var/lib/mysql

volumes:
  mysql-data:
```

### Стъпка 5: Стартиране на проекта

```bash
docker compose up --build
```

След секунди отворете браузъра и посетете:
[http://localhost:5000](http://localhost:5000)

### Стъпка 6: Спиране и изтриване на проекта

Спрете приложението чрез `Ctrl + C` и изтрийте проекта:

```bash
docker compose down -v
```
