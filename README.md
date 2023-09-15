## Production Tips
### Development Server

During development, use the `runserver` command:

```bash
python manage.py runserver
```

### Deploying to a Cloud Server

To deploy your Django project on a cloud server, you can use **Gunicorn**:

```bash
gunicorn django_kun.wsgi:application --bind "0.0.0.0:8000"
```

Please note that `gunicorn` is not intended for Windows.

### Running on Windows

If you're using Windows, you can use **Waitress** as an alternative to Gunicorn. 

1. Create a `server.py` file with the following content:

```python
from waitress import serve
from yourdjangoproject.wsgi import application

if __name__ == '__main__':
    serve(application, port='8000')
```

2. Run the server using the command:

```cmd
python server.py
```

