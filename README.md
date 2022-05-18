
### Pip

```
$ python3 -m venv env
$ source env/bin/activate
(djangox) $ pip install -r requirements.txt
(djangox) $ python manage.py migrate
(djangox) $ python manage.py createsuperuser
(djangox) $ python manage.py runserver

```

### Docker

```
$ docker build .
$ docker-compose up -d
$ docker-compose exec web python manage.py migrate
$ docker-compose exec web python manage.py createsuperuser

```


### CONTAINER ID of you django app

```
docker exec -t -i b0b96330affd bash


# Collect static files

python manage.py collectstatic --noinput

# Apply database migrations

python manage.py migrate

# Start server

python manage.py runserver 0.0.0.0:8000
```



For Docker, the `INTERNAL_IPS` configuration in `config/settings.py` must be updated to the following:

```python
# config/settings.py
# django-debug-toolbar
import socket
hostname, _, ips = socket.gethostbyname_ex(socket.gethostname())
INTERNAL_IPS = [ip[:-1] + "1" for ip in ips]
```

## Setup

```
# Run Migrations
(env) $ python manage.py migrate

# Create a Superuser
(env) $ python manage.py createsuperuser

# Confirm everything is working:
(env) $ python manage.py runserver

```
