#!/bin/bash
APP_PORT=${APP_PORT:-8000}
cd /app/
/opt/venv/bin/gunicorn --worker-tmp-dir /dev/shm django_kub.wsgi:application --bind "127.0.0.1":${APP_PORT}
