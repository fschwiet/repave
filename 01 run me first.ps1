
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


# installing chocolatey requires restarting the console, so do this before next step
iex ((new-object net.webclient).DownloadString("http://bit.ly/psChocInstall"))

