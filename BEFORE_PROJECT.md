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