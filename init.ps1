function which($name) { Get-Command $name -ErrorAction SilentlyContinue | Select-Object Definition }

echo "Checking Chocolatey..."
if ((which cinst) -eq $null) {
  iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
  $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
  echo 'Installed Chocolatey now'
} else {
  echo 'Already installed Chocolatey'
}

./deploy.ps1
