#!/usr/bin/env bash
# exit on error
set -o errexit

#poetry install
pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate
DJANGO_SUPERUSER_EMAIL = <rokero.0407@hotmail.com>
DJANGO_SUPERUSER_PASSWORD = <04072003>
DJANGO_SUPERUSER_USERNAME =<username>
python manage.py createsuperuser --no-input