## Installing Chocolatey Package Manager on Windows

### Installation Endpoint: [https://chocolatey.org/install](https://chocolatey.org/install)

To install Chocolatey, open PowerShell and run the following command:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

To verify if Chocolatey has been successfully installed, check its version by running:

```powershell
choco --version
```

### Installing Kubernetes on Windows

To install Kubernetes, use Chocolatey with the following command:

```powershell
choco install kubernetes-cli
```

To confirm a successful installation, run:

```powershell
kubectl version --client
```

### Installing Docker Desktop

Download the Docker Desktop Installer.exe from [https://docs.docker.com/desktop/install/windows-install/](https://docs.docker.com/desktop/install/windows-install/)

Then, run the following command in PowerShell:

```powershell
Start-Process 'Docker Desktop Installer.exe' -Wait install
```

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

- To check the wheather gunicorn is running as expected we do
```
$ pwd
$ /workspaces/Django-with-kuberneties/mainproject/venv/bin/gunicorn django_kub.wsgi:application
```
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

### Setup
- Create the `entrypoint.sh` shell script to execute the gunicorn command for deploying the server.
- Develop the `migrate.sh` script to handle database migrations and create the `superuser`, serving as a crucial step in setting up the project's database.

- Streamline the Docker build and configuration process by crafting the `docker-compose` file, encompassing all necessary components. This file eliminates the need to repeatedly write individual commands for Docker setup; instead, execute `docker-compose build` to efficiently set up the environment.

- Manage the Docker-compose lifecycle using `docker-compose up` to start the services and `docker-compose down` to gracefully shut down the Docker-compose environment. Additionally, if desired, employ `docker-compose -d` to run Docker in detach mode for increased flexibility.
