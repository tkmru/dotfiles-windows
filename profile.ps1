function which($name) { Get-Command $name -ErrorAction SilentlyContinue | Select-Object Definition }

Set-Alias time Measure-Command
Set-Alias g git
Set-Alias cl clear
Set-Alias l ls
${function:l} = { ls -Force @args }
