## Проект сбора отзывов пользователей на произведения


### Статус workflow:
![example workflow](https://github.com/ilonka05/yamdb_final/actions/workflows/yamdb_workflow.yml/badge.svg)

---

### Ссылка на развёрнутый проект:

http://51.250.81.113/admin/

### Если сервер недоступен, можно запустить проект локально по ссылке:

http://localhost/admin/

---

### Описание проекта:

Проект YaMDb собирает отзывы пользователей на произведения.
Произведения делятся на категории: «Книги», «Фильмы», «Музыка».
Список категорий может быть расширен администратором.

---

### Используемые технологии и библиотеки:
* [Python](https://www.python.org/)
* [Django](https://pypi.org/project/Django/)
* [Django REST framework](https://pypi.org/project/djangorestframework/)
* [requests](https://pypi.org/project/requests/)

---

### Как запустить проект:

- Клонируйте репозиторий на локальную машину

```
git clone https://github.com/ilonka05/yamdb_final.git
```

- Перейдите в папку с проектом

```
cd yamdb_final
```

- Перейдите в папку infra

```
cd infra
```

- В данной папке проекта создайте файл '.env'. Пример содержания файла:

```
DB_ENGINE="django.db.backends.postgresql"
DB_NAME="postgres"
POSTGRES_USER="postgres"
POSTGRES_PASSWORD="postgres"
DB_HOST="db"
DB_PORT="5432"
```

- Выполните сборку контейнеров

```
docker-compose up -d --build
```

- Выполните миграцию БД, создайте суперпользователя и выполните сборку статики

```
docker-compose exec web python manage.py migrate
docker-compose exec web python manage.py createsuperuser
docker-compose exec web python manage.py collectstatic --no-input
```

- Выполните команду по наполнению БД из файла фикстур

```
docker-compose exec web python manage.py loaddata fixtures.json
```

- Также, при необходимости, можно выполнить резервную копию БД

```
docker-compose exec web python manage.py dumpdata > fixtures.json 
```

---

- Авторы проекта:

    Аверин Даниил

    Сафиканов Павел

    Петина Илона
