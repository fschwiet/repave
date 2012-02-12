# Windows Installer
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:WindowsInstaller31"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:WindowsInstaller45"

# Powershell
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:PowerShell"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:PowerShell2"

# .NET
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:NETFramework20SP2"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:NETFramework35"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:NETFramework4"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:JUNEAUNETFX4"




# Ninite stuff
cmd /C "ninite\ninite.exe"




# Chocolatey stuff
iex ((new-object net.webclient).DownloadString("http://bit.ly/psChocInstall"))

cinst windowstelnet
cinst virtualclonedrive
cinst sysinternals
cinst notepadplusplus
cinst adobereader
cinst msysgit
cinst fiddler
cinst filezilla
cinst skype
cinst paint.net
cinst ccleaner
cinst tortoisesvn
cinst tortoisehg







# WebPI command line stuff

# IIS
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:IIS7"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:ASPNET"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:BasicAuthentication"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:DefaultDocument"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:DigestAuthentication"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:DirectoryBrowse"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:HTTPErrors"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:HTTPLogging"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:HTTPRedirection"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:IIS7_ExtensionLessURLs"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:IISManagementConsole"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:IPSecurity"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:ISAPIExtensions"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:ISAPIFilters"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:LoggingTools"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:MetabaseAndIIS6Compatibility"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:NETExtensibility"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:RequestFiltering"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:RequestMonitor"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:StaticContent"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:StaticContentCompression"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:Tracing"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:WindowsAuthentication"
