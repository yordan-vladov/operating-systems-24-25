# Работа с Docker Network и Docker Volume

## Какво са Docker Network и Volume?

- **Docker мрежа (Docker Network)** ви позволява да свързвате множество контейнери така, че да могат да комуникират помежду си чрез имена (DNS).
- **Docker том (Docker Volume)** осигурява постоянно съхранение на данни, така че да не се губят при спиране или изтриване на контейнера.

## Свързване на уеб приложение с база данни чрез мрежа и том

### Стъпка 1: Създаване на персонализирана мрежа

```bash
docker network create my-network
```

Това създава изолирана мрежа, в която контейнерите могат да комуникират по име.

### Стъпка 2: Стартиране на контейнер за MySQL с том за данните

```bash
docker volume create mysql-data

docker run -d \
  --name mysql-db \
  --network my-network \
  -e MYSQL_ROOT_PASSWORD=rootpass \
  -e MYSQL_DATABASE=testdb \
  -v mysql-data:/var/lib/mysql \
  mysql:5.7
```

- `--network my-network` – свързва контейнера към нашата мрежа.
- `-v mysql-data:/var/lib/mysql` – използва том за съхранение на данни.

### Стъпка 3: Създаване на Python приложение с Flask

Създайте директория и файловете:

```bash
mkdir flask-mysql-app
cd flask-mysql-app
```

#### `requirements.txt`

```txt
flask
mysql-connector-python
```

#### `app.py`

```python
from flask import Flask
import mysql.connector

app = Flask(__name__)

@app.route('/')
def index():
    try:
        conn = mysql.connector.connect(
            host='mysql-db',
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

#### `Dockerfile`

```dockerfile
FROM python:3.8

WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt

CMD ["python", "app.py"]
```

### Стъпка 4: Създаване и стартиране на уеб приложението

```bash
docker build -t flask-mysql-app .
docker run -d -p 5000:5000 --network my-network flask-mysql-app
```

### Стъпка 5: Тестване

Посетете: [http://localhost:5000](http://localhost:5000)
Ако всичко е наред, ще видите: **Успешна връзка с базата!**

## Допълнителни задачи (по избор)

- Изтрийте контейнера `mysql-db`, стартирайте нов от същия образ и същия том (`mysql-data`) – проверете дали базата още съществува.
- Използвайте `docker volume inspect mysql-data`, за да намерите мястото, където физически се съхраняват данните.
- Направете резервно копие на тома:

```bash
docker run --rm \
  -v mysql-data:/volume \
  -v $(pwd):/backup \
  alpine tar czf /backup/mysql-backup.tar.gz -C /volume .
```

- Създайте `docker-compose.yml`, който автоматизира цялото упражнение.
