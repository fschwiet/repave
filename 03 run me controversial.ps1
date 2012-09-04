

cmd /C "ninite\ninite.client.exe"

# some registry changes
regedit /s '.\registry\swapCapsLockAndLWin.reg'

$iisComponents = @(
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
    "UrlRewrite2"
);


$iisComponents | % { webpicmd /products:$_ }


