
cmd /C "ninite\ninite.core.exe"

##configure windows update to download but prompt before installing
#. .\Misc\WindowsUpdateConfig.ps1
#Set-WindowsUpdateConfig 3 -IncludeRecommended $false

# installing chocolatey requires restarting the console, so do this before next step
iex ((new-object net.webclient).DownloadString("http://bit.ly/psChocInstall"))

