
$webpiTargets = @(

# Windows Installer
    "WindowsInstaller31",
    "WindowsInstaller45"

# Powershell
    "PowerShell",
    "PowerShell2",

# .NET
    "NETFramework20SP2",
    "NETFramework35",
    "NETFramework4",
    "JUNEAUNETFX4",

# IIS
    "IIS7",
    "CGI",
    "ASPNET",
    "BasicAuthentication",
    "DefaultDocument",
    "DigestAuthentication",
    "DirectoryBrowse",
    "HTTPErrors",
    "HTTPLogging",
    "HTTPRedirection",
    "IIS7_ExtensionLessURLs",
    "IISManagementConsole",
    "IISManagementScriptsAndTools",
    "IPSecurity",
    "ISAPIExtensions",
    "ISAPIFilters",
    "LoggingTools",
    "MetabaseAndIIS6Compatibility",
    "NETExtensibility",
    "RequestFiltering",
    "RequestMonitor",
    "StaticContent",
    "StaticContentCompression",
    "Tracing",
    "WindowsAuthentication",
    "UrlRewrite2",

    "IISExpress",
    "AppFabric",
    "AppFabricSetup",
);



cmd /C ("webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:" + [string]::Join(",", $webpiTargets);


# Ninite stuff
cmd /C "ninite\ninite.exe"


# installing chocolatey requires restarting the console, so do this before next step
iex ((new-object net.webclient).DownloadString("http://bit.ly/psChocInstall"))

