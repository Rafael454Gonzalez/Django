#!/usr/bin/env bash
# exit on error
set -o errexit

#poetry install
pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate

DJANGO_SUPERUSER_PASSWORD=04072003 python manage.py createsuperuser --no-input --username Rafael2  --email rokero.0407@hotmail.com
