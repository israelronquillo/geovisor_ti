#!/bin/bash
#Enviremoment de Python
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
workon venv

#Ejecucion del Geonode
cd /opt/geonode/
set -a
. ./.env_dev
set +a
python manage.py migrate
python manage.py makemigrations
#python manage.py migrate
nohup python manage.py runserver 0.0.0.0:8007 &

