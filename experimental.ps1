.\VerifyRunningAsAdministrator.ps1

Import-Module .\Boxstarter\Boxstarter.Chocolatey\Boxstarter.Chocolatey.psd1

$shouldEnableUac = Get-UAC;
Disable-UAC

Install-WindowsUpdate -AcceptEula
Update-ExecutionPolicy Unrestricted
Set-ExplorerOptions -showHidenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions
Enable-RemoteDesktop

cinst IIS-WebServerRole -source windowsfeatures
cinst IIS-HttpCompressionDynamic -source windowsfeatures
cinst IIS-ManagementScriptingTools -source windowsfeatures
cinst IIS-WindowsAuthentication -source windowsfeatures
cinst IIS-BasicAuthentication -source windowsfeatures
cinst IIS-ASPNET -source windowsfeatures
cinst IIS-ASPNET45 -source windowsfeatures
cinst IIS-ManagementConsole -source windowsfeatures


if ($shouldEnableUac) {
    Enable-UAC
}