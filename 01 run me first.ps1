
$webpiTargets = @(

# Windows Installer
    "WindowsInstaller31",
    "WindowsInstaller45",

# Powershell
    "PowerShell",
    "PowerShell2",

# .NET
    "NETFramework20SP2",
    "NETFramework35",
    "NETFramework4",
    "JUNEAUNETFX4"
);



cmd /C ("webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:" + [string]::Join(",", $webpiTargets))


cmd /C "ninite\ninite.core.exe"


#configure windows update to download but prompt before installing
. .\Misc\WindowsUpdateConfig.ps1
Set-WindowsUpdateConfig 3 -IncludeRecommended $false


# installing chocolatey requires restarting the console, so do this before next step
iex ((new-object net.webclient).DownloadString("http://bit.ly/psChocInstall"))

