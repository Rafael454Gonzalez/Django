#!/usr/bin/env bash
# exit on error
set -o errexit

#poetry install
pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate

manage.py createsuperuser [-h] [--username USERNAME] [--noinput]
                                 [--database DATABASE] [--email EMAIL]
                                 [--version] [-v {0,1,2,3}]
                                 [--settings SETTINGS]
                                 [--pythonpath PYTHONPATH] [--traceback]
                                 [--no-color] [--force-color] [--skip-checks]