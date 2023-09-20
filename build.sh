#!/usr/bin/env bash
# exit on error
set -o errexit

#poetry install
pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate

python manage.py createsuperuser --no-input
export DJANGO_SUPERUSER_EMAIL = <rokero.0407@hotmail.com>
export DJANGO_SUPERUSER_PASSWORD = <04072003>
export DJANGO_SUPERUSER_USERNAME =<username>