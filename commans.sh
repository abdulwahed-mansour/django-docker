docker ps

CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                         NAMES
3fcc49196a84        ex_nginx          "nginx -g 'daemon off"   3 days ago          Up 32 seconds       0.0.0.0:80->80/tcp, 443/tcp   ex_nginx_1
66175bfd6ae6        ex_webapp         "/docker-entrypoint.s"   3 days ago          Up 32 seconds       0.0.0.0:32768->8000/tcp       ex_webapp_1
# postgres docker container ...

Get the CONTAINER ID of you django app and log into :

docker exec -t -i cbf8ff00bd77 bash

    collecstatic
    migrate
    runserver or start it with gunicorn or uWSGI

Here is an example (docker-entrypoint.sh) :

#!/bin/bash

# Collect static files
echo "Collect static files"
python manage.py collectstatic --noinput

# Apply database migrations
echo "Apply database migrations"
python manage.py migrate

# Start server
echo "Starting server"
python manage.py runserver 0.0.0.0:8000
